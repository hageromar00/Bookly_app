import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar_bookdetails.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/simlilar_book_hori_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key,required this.bookmodel});
  final BookModel bookmodel;//required 

  @override
  Widget build(BuildContext context) {
    var widthh = MediaQuery.of(context).size.width;
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding:const  EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  BookDetailsSection(book: bookmodel),
                 BookAction(model: bookmodel,),
                 const Expanded(
                      child: SizedBox(
                    height: 40,
                  )),
                const  SilmilarBooksSection(),
                ],
              ),
            )),
      ],
    );
  }
}

