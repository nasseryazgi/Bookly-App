import 'package:bookly/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/simlar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'books_details_section.dart';
import 'custom_book_details_appbar.dart';
import 'custom_list_view_item.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


