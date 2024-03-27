import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_mobile/constant/assets.dart';
import 'package:delivery_mobile/constant/dimens.dart';
import 'package:delivery_mobile/constant/strings.dart';
import 'package:delivery_mobile/presentation/pages/driverpickup/productlist.dart';
import 'package:delivery_mobile/presentation/pages/homepage/comfirm_order.dart';
import 'package:delivery_mobile/presentation/pages/homepage/restuarant_view.dart';
import 'package:delivery_mobile/presentation/pages/map/map_page.dart';
import 'package:delivery_mobile/presentation/pages/notification/notification.dart';
import 'package:delivery_mobile/widgets/campaign_widget.dart';
import 'package:delivery_mobile/widgets/category_widget.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = CarouselController();
  int activeIndex = 0;
  final List<Items> items = [
    Items(
      image: 'assets/images/pngimg.com - pizza_PNG44076 - Copy.png',
      title: 'Best Discounted',
      subtitle: 'tastyfresh',
      price: 19.99,
      starCount: 4,
    ),
    Items(
      image: 'assets/images/png-clipart-pizza-pizza-thumbnail.png',
      title: 'Best Discounted',
      subtitle: 'tastyfresh',
      price: 29.99,
      starCount: 5,
    ),
    Items(
      image: 'assets/images/pizza-png-15.png',
      title: 'Best Discounted',
      subtitle: 'tastyfresh',
      price: 39.99,
      starCount: 3,
    ),
    // Add more products as needed
  ];
  final images = [
    AssetsValues.icecream,
    AssetsValues.images,
    AssetsValues.mcdonalds,
    AssetsValues.nonveg,
    AssetsValues.noodle,
    AssetsValues.pizza,
    AssetsValues.thali,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MapPage()),
                  );
                },
                icon: const Icon(
                  Icons.location_on,
                  color: Colors.black,
                )),
            const Text(
              StringValues.location,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const NotificationWidget()),
                  );
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                )),
            const SizedBox(
              height: 20,
            )
          ]),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(8.00),
              ),
              child: const Row(children: [
                Icon(
                  Icons.search,
                  color: Colors.amber,
                ),
                SizedBox(width: 8.0),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: StringValues.search,
                      hintStyle: TextStyle(
                        fontSize: 10,
                      ),
                      border: InputBorder.none),
                ))
              ])),
          Dimens.boxHeight10,
          CarouselSlider.builder(
              carouselController: controller,
              itemCount: images.length,
              itemBuilder: (context, index, realIndex) {
                final imageUrl = images[index];
                return buildImage(imageUrl, index);
              },
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                reverse: true,
                viewportFraction: 1,
                enlargeCenterPage: true,
                pageSnapping: false,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: const Duration(seconds: 2),
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              )),
          buildDotIndicator(),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  StringValues.categories,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 300),
                  child: Text(
                    'view all',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: CategoryWidget(),
          ),
          const SizedBox(
            height: 20,
            child: Row(
              children: [],
            ),
          ),
          const Row(
            children: [
              Text(
                StringValues.popular,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                StringValues.viewall,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const ProductList(),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  StringValues.campaigns,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 299),
                child: Text(
                  StringValues.viewall,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return ItemWidget(
                  onTap: () {},
                  image: items[index].image,
                  title: items[index].title,
                  subtitle: items[index].subtitle,
                  price: items[index].price,
                  starCount: items[index].starCount,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                width: 20.0,
              ),
              itemCount: items.length,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  StringValues.allrestuarant,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 280.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.menu_open_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConfirmOrderPage()),
                    );
                  },
                ),
              )
            ],
          ),
          Container(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return RestuarantView(
                  image: items[index].image,
                  title: items[index].title,
                  subtitle: items[index].subtitle,
                  price: items[index].price,
                  starCount: items[index].starCount,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                width: 20.0,
              ),
              itemCount: items.length,
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ])));
  }

  Widget buildImage(String imageUrl, int index) {
    return Container(
        width: 300,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: const Column(
          children: [
            Text(
              '',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ],
        ));
  }

  Widget buildDotIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
        effect: const JumpingDotEffect(
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: Colors.red,
            dotColor: Colors.grey),
      );
}
