import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';
import 'custom_list_view_item.dart';
import 'featured_books_list_view.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(),
          )
        ],
      ),
    );
  }
}
