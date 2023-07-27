import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/add_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_list_view_item.dart';

class BestSellerListViewItem extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BestSellerListViewItem({Key? key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
            // AspectRatio(
            //   aspectRatio: 2.5 / 4,
            //   child: Container(
            //     height: 125,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8),
            //         image: const DecorationImage(
            //             fit: BoxFit.fill,
            //             image: AssetImage(AassetsData.testImage))),
            //   ),
            // ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFineRgular),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    book.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      BookRating(
                        rating: 0,
                        count: book.volumeInfo.pageCount ?? 0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
