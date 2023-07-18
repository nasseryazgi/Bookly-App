import 'package:bookly/Features/home/data/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';

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
