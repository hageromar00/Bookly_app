import 'package:bookly_app/core/widget/custom_error.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views_model/similarnewestbooks/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksFail) {
          return CustomError(ErrorMessage: state.errormessage);
        }
        if(state is SimilarBooksSuccess) {
          return SizedBox(
          height: MediaQuery.of(context).size.height * .17,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imgurl: state.book[index].volumeInfo!.imageLinks!.thumbnail ??'',
                  ),
                );
              }),
        );  
        }
        else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
