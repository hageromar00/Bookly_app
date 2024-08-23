import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.BackColor,
    required this.TextColor,
    this.border_radius,
    required this.text,
    this.FontSize
  });
  final Color BackColor;
  final Color TextColor;
  final BorderRadius? border_radius;
  final String text;
  final double? FontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: BackColor,
            shape: RoundedRectangleBorder(
                borderRadius: border_radius ?? BorderRadius.circular(15))),
        child: Text(
          text,
          style: Styles.textStyle18
              .copyWith(color: TextColor, fontWeight: FontWeight.w900,fontSize: FontSize),
              
        ),
      ),
    );
  }
}
