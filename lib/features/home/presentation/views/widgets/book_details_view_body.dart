import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar_bookdetails.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var widthh = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widthh * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'Harry Potter and ',
            style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .8,
            child: Text(
              'jw Powing',
              style: Styles.textStyle14.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              children: [
                Text(
                  r'19,99$',
                  style:
                      Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const BookRating(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
