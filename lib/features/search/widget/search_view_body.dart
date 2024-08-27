import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/search/widget/custom_search_text.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSearchText(),
        Text(
          'Search Result',
          style: Styles.textStyle30.copyWith(fontFamily: kGtSectraFine),
        ),
        const SizedBox(
          height: 16,
        ),
        const Expanded(child: SearchListView()),
      ],
    );
  }
}

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding:const  EdgeInsets.symmetric(vertical: 10),
            // child: BestSellerViewItem(book: ),
          );
        });
  }
}
