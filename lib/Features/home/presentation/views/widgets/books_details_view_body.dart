import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_details_appbar.dart';
import 'custom_list_view_item.dart';

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
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.
            copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text('Rudyard Kipling',
                style:
                    Styles.textStyle18.
                    copyWith(fontStyle: FontStyle.italic)),
          ),
        ],
      ),
    );
  }
}
