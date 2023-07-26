import 'package:flutter/material.dart';

class Sliders extends StatelessWidget {
  const Sliders({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(image)),
                const SizedBox(height: 25),
              ],
            )
        ),
      ],
    );
  }
}
