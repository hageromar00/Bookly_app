import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4, //width/height
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 231, 199, 199),
            image: const DecorationImage(
                image: AssetImage(AssetsDate.testImage), fit: BoxFit.fill)),
      ),
    );
  }
}
