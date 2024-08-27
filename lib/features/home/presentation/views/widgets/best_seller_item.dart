import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KbookDetail);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImage(
                imgurl: book.volumeInfo!.imageLinks!.thumbnail ?? ''),
            // AspectRatio(
            //   aspectRatio: 2.6 / 4, //width/height
            //   child: Container(
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(16),
            //         color: const Color.fromARGB(255, 231, 199, 199),
            //         image: const DecorationImage(
            //             image: AssetImage(AssetsDate.testImage),
            //             fit: BoxFit.fill)),
            //   ),
            // ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.volumeInfo!.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    book.volumeInfo!.authors![0],
                    style: Styles.textStyle14.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        r'19,99$',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(rating:book.volumeInfo?.averageRating?.round() ,
                      count: book.volumeInfo!.pageCount!,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.main = MainAxisAlignment.start,required this.rating, required this.count});
  final MainAxisAlignment main;
  final dynamic rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: main,
      children:  [
       const Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
      const  SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
       const SizedBox(
          width: 6.3,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '($count)',
            // style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
