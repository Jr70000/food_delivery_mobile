import 'package:flutter/material.dart';

class WidgetView {
  final String image;
  final String title;
  final String subtitle;
  final double price;
  final int starCount;

  WidgetView(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.starCount});
}

class RestuarantView extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final double price;
  final int starCount;
  const RestuarantView(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.starCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width - 50,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$starCount",
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 6)),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "\$$price",
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
