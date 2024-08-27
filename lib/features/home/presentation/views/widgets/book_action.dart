import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key,required this.model});
  final BookModel model;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
        const  Expanded(
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
              onpresses: ()async{ 
                final Uri _url = Uri.parse(model.volumeInfo!.previewLink!);
                 if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
              },
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
