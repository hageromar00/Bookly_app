import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              BackColor: Colors.white,
              TextColor: Colors.black,
              border_radius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15)),
              text: r'19.9$',
            ),
          ),
          Expanded(
            child: CustomButton(
              FontSize: 16,
              BackColor: Color(0xffEF8262),
              TextColor: Colors.white,
              border_radius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15)),
              text: 'Free Preview',
            ),
          ),
        ],
      ),
    );
  }
}
