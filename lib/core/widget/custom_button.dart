import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.BackColor,
      required this.TextColor,
      this.border_radius,
      required this.text,
      this.FontSize,
      this.onpresses
      });

  final Color BackColor;
  final Color TextColor;
  final BorderRadius? border_radius;
  final String text;
  final double? FontSize;
  final void Function()? onpresses;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: TextButton(
        onPressed: onpresses,
        style: TextButton.styleFrom(
            backgroundColor: BackColor,
            shape: RoundedRectangleBorder(
                borderRadius: border_radius ?? BorderRadius.circular(12))),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              color: TextColor,
              fontWeight: FontWeight.w900,
              fontSize: FontSize),
        ),
      ),
    );
  }
}
