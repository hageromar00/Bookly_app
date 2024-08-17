
import 'package:flutter/material.dart';

class slideText extends StatelessWidget {
  const slideText({
    super.key,
    required this.slideingAnimation,
  });

  final Animation<Offset> slideingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slideingAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
