import 'package:delivery_mobile/constant/assets.dart';
import 'package:delivery_mobile/constant/strings.dart';
import 'package:flutter/material.dart';


class Product {
  final String image;
  final String title;
  final String subtitle;
  final double price;
  final int starCount;

  Product({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.starCount,
  });
}

class ProductList extends StatefulWidget {

  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Product> products = [
    Product(
      image: 'assets/images/pngimg.com - pizza_PNG44076 - Copy.png',
      title: 'doublecheeze',
      subtitle: 'tastyfresh',
      price: 19.99,
      starCount: 4,
    ),
    Product(
      image: 'assets/images/png-clipart-pizza-pizza-thumbnail.png',
      title: 'doublepizza',
      subtitle: 'tastyfresh',
      price: 29.99,
      starCount: 5,
    ),
    Product(
      image: 'assets/images/pizza-png-15.png',
      title: 'doublepizza',
      subtitle: 'tastyfresh',
      price: 39.99,
      starCount: 3,
    ),
    // Add more products as needed
  ];

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: products.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _showBottomSheet(context);
            },
            child: Container(
              color: Colors.white,
              width: 150, // Adjust the width as needed
              margin: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    products[index].image,
                    width: 150,
                    height: 100,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    products[index].title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    products[index].subtitle,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text(
                          '\$${products[index].price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 10,
                      ),
                      Text(
                        products[index].starCount.toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.amber),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          child: GestureDetector(
            onTap: () {},
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.2,
              maxChildSize: 0.75,
              builder: (_, controller) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.remove,
                        color: Colors.black,
                      ),
                      Expanded(
                          child: ListView.builder(
                              controller: controller,
                              itemCount: 1,
                              itemBuilder: (_, index) {
                                return Card(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 90,
                                        child: Image.asset(
                                            AssetsValues.holidaydeals),
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Text(
                                              StringValues.bestdiscounted,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 80,
                                            ),
                                          ])
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                StringValues.tastyfresh,
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 7,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 7,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 7,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 7,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      const Column(
                                        children: [
                                          Text(
                                            '\$${100}',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              }))
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      );
    },
  );
}
