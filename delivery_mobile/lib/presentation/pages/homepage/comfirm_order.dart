import 'package:delivery_mobile/constant/assets.dart';
import 'package:delivery_mobile/constant/strings.dart';
import 'package:delivery_mobile/presentation/pages/homepage/hompage.dart';
import 'package:flutter/material.dart';


class ConfirmOrderPage extends StatefulWidget {
  const ConfirmOrderPage({super.key});

  @override
  State<ConfirmOrderPage> createState() => _ConfirmOrderPageState();
}

class _ConfirmOrderPageState extends State<ConfirmOrderPage> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                AssetsValues.image2, // Replace with your correct asset path
                fit: BoxFit.cover,
              ),
            ),
            leading: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                onPressed: () {
                  // Handle leading icon tap
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const HomePage()));
                },
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(8.0),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
                child: IconButton(
                  onPressed: () {
                    // Handle shopping cart icon tap
                    _showShoppingCartModal(context);
                  },
                  icon: const Icon(Icons.shopping_cart_rounded,
                      color: Colors.white),
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index == 0) {
                  // Item 0: Column with Text and Radio buttons
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AssetsValues.image2))),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            _buildRadioButton('All'),
                            _buildRadioButton('Burger'),
                            _buildRadioButton('Pizza'),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  // Other items: List items with images and subtitles
                  if (_isSelectedCategory('All') ||
                      (_isSelectedCategory('Burger') && index % 2 == 1) ||
                      (_isSelectedCategory('Pizza') && index % 2 == 0)) {
                    // Display list items based on the selected category
                    return ListTile(
                      title: Text(
                        ' $index',
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            StringValues.larammandir,
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      leading: Image.asset(
                        'assets/images/pizza-png-15.png', // Replace with your correct asset path
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {
                        // Show modal bottom sheet or perform other actions
                        _showModalBottomSheet(context);
                      },
                    );
                  } else {
                    return const SizedBox
                        .shrink(); // Hide the items when not matching the category
                  }
                }
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRadioButton(String category) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.orange,
      ),
      child: Row(
        children: [
          Radio(
            value: category,
            groupValue: selectedCategory,
            onChanged: (value) {
              setState(() {
                selectedCategory = value.toString();
              });
            },
          ),
          Text(category),
        ],
      ),
    );
  }

  bool _isSelectedCategory(String category) {
    return selectedCategory == category;
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: [
              ListTile(
                leading: Image.asset(
                  'assets/images/pizza-png-15.png', // Replace with your correct asset path
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
                title: const Text('Add to Favourites'),
                onTap: () {
                  // Add to favourites logic
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/pizza-png-15.png', // Replace with your correct asset path
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
                title: const Text('Share'),
                onTap: () {
                  // Share logic
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showShoppingCartModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: [
              ListTile(
                leading: Image.asset(
                  'assets/images/pizza-png-15.png', // Replace with your correct asset path
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
                title: const Text(
                  'Your Shopping Cart',
                  style: TextStyle(color: Colors.black),
                ),
                // Add your shopping cart items here
              ),
            ],
          ),
        );
      },
    );
  }
}
