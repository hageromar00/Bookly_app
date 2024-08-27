import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar_bookdetails.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/simlilar_book_hori_list_view.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required  this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var widthh = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthh * .22),
          child: CustomBookImage(
              imgurl: book.volumeInfo?.imageLinks?.thumbnail ??''),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          book.volumeInfo!.title!,
          style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
        ),
        const SizedBox(
          height: 3,
        ),
        Opacity(
          opacity: .8,
          child: Text(
            book.volumeInfo!.authors![0],
            style: Styles.textStyle14.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
         BookRating(
          main: MainAxisAlignment.center,
          rating: book.volumeInfo?.averageRating ?? 0,
          count: book.volumeInfo?.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class SilmilarBooksSection extends StatelessWidget {
  const SilmilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const SimilarBookListView(),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
