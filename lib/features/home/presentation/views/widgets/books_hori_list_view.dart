import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widget/custom_error.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views_model/featurebooks/feature_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, FeatureBookState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                       onTap: () {
        GoRouter.of(context).push(AppRouter.KbookDetail, extra: state.books[index]);
      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CustomBookImage(
                          imgurl: state.books[index].volumeInfo!.imageLinks!
                                  .thumbnail ??
                              '',
                        ),
                      ),
                    );
                  }),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomError(ErrorMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );

    // return BlocBuilder<FeatureBookCubit, FeatureBookState>(
    //   builder: (context, state) {
    //     if (state is FeaturedBooksSuccess) {
    //       return Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: SizedBox(
    //           height: MediaQuery.of(context).size.height * .3,
    //           child: ListView.builder(
    //               physics: const BouncingScrollPhysics(),
    //               scrollDirection: Axis.horizontal,
    //               itemCount: 6,
    //               itemBuilder: (context, index) {
    //                 return const Padding(
    //                   padding: EdgeInsets.symmetric(horizontal: 8),
    //                   child: CustomBookImage(),
    //                 );
    //               }),
    //         ),
    //       );
    //     } else if (state is FeaturedBooksFailure) {
    //       return const CustomError(
    //         ErrorMessage: 'error here',
    //       );
    //     } else {
    //       return const Center(child: CircularProgressIndicator());
    //     }
    //   },
    // );
  }
}
