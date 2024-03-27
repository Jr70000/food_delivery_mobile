import 'package:flutter/material.dart';

class MySwipeButton extends StatelessWidget {
  const MySwipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SwipeButtonWidget(
      thumb: const Icon(
        Icons.double_arrow_rounded,
        color: Colors.amber,
      ),
      activeThumbColor: Colors.red,
      activeTrackColor: Colors.grey.shade300,
      onSwipe: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Swiped"),
            backgroundColor: Colors.green,
          ),
        );
      },
     child:const Text(
        "Swipe to Store",
        style: TextStyle(
          color: Colors.red,
        ),
      ),
    );
  }
}

class SwipeButtonWidget extends StatelessWidget {
  final Widget thumb;
  final Widget child;
  final Color activeThumbColor;
  final Color activeTrackColor;
  final Function onSwipe;

  const SwipeButtonWidget({
    super.key,
    required this.thumb,
    required this.child,
    required this.activeThumbColor,
    required this.activeTrackColor,
    required this.onSwipe,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx > 50) {
            // Trigger swipe action if gesture delta is greater than 50 (you can adjust this threshold)
            onSwipe();
          }
        },
        child: Stack(
          children: [
            Container(
              color: activeTrackColor,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: thumb,
                ),
              ),
            ),
            Positioned.fill(
              child: Center(child: child),
            ),
          ],
        ),
      ),
    );
  }
}
