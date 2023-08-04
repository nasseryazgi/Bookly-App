import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_list_view_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomBookImage(
                imageUrl:
                    bookModel.volumeInfo.imageLinks?.thumbnail ?? 'error')),
        const SizedBox(
          height: 15,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(bookModel.volumeInfo.authors![0],
              style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic)),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 0,
          count: 0,
        ),
        const SizedBox(
          height: 37,
        ),
        BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
