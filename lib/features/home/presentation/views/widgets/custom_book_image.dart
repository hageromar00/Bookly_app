import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key,required this.imgurl});
  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4, //width/height
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:  Color.fromARGB(255, 231, 199, 199),
            image:  DecorationImage(
               fit: BoxFit.fill,
                image:NetworkImage(imgurl)
                //  AssetImage(AssetsDate.testImage)
                ,
                ),)
      ),
    );
  }
}
