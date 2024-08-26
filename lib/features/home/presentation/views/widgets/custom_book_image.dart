import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgurl});
  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4, //width/height
        child: CachedNetworkImage(
          imageUrl: imgurl,
          errorWidget: (context, url, error) =>
              const Icon(FontAwesomeIcons.circleExclamation),
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          fit: BoxFit.fill,
        ),
        // child: Container(
        //     decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(16),
        //   image: DecorationImage(
        //     fit: BoxFit.fill,
        //     image: NetworkImage(imgurl)
        //     //  AssetImage(AssetsDate.testImage)
        //     ,
        //   ),
        // )),
      ),
    );
  }
}
