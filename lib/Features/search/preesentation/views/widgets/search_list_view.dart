import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/add_router.dart';
import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/presentation/views/widgets/custom_list_view_item.dart';

class SearchListBody extends StatelessWidget {
  const SearchListBody({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(

                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kBookDetailsView,
                        extra: books[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomBookImage(
                      imageUrl: books[index].volumeInfo.imageLinks
                          ?.thumbnail ??
                          '',
                    ),
                  ));
            }));}}