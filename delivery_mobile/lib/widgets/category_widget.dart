import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});

  List<String> images = [
    'assets/images/152-1522467_non-veg-dishes-png-transparent-png.png',
    'assets/images/burger.jpg',
    'assets/images/ice-creamice.png',
    'assets/images/images.jpg',
    'assets/images/mcdonalds-and-obesity-4-2048.webp',
    'assets/images/Noodles-PNG-Image.png',
  ];
  List<String> categoryTitle = [
    'Thali',
    'Burgers',
    'Ice cream',
    'Burgers',
    'mcdonalds',
    'Non Veg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Flexible(
        child: Row(
          children: [
            for (int index = 0; index < images.length; index++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    const SizedBox(height: 2),
                    Text(
                        categoryTitle.length > index
                            ? categoryTitle[index]
                            : '',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
