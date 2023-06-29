import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [CustomBookDetailsAppBar()],
      ),
    );
  }
}

