import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookly_app/features/home/presentation/views_model/similarnewestbooks/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViews extends StatefulWidget {
  const BookDetailsViews({super.key,required this.bookmodel});
  final BookModel bookmodel;

  @override
  State<BookDetailsViews> createState() => _BookDetailsViewsState();
}

class _BookDetailsViewsState extends State<BookDetailsViews> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).similarBook(category: widget.bookmodel.volumeInfo!.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailViewBody()),
    );
  }
}
