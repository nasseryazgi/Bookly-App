import 'package:bookly/core/utils/custom_error.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../mananger/newset_books_cubit/newset_books_cubit.dart';
import '../../mananger/newset_books_cubit/newset_books_state.dart';
import 'best_saller_listview_item.dart';
import 'custom_loading_indicator.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(builder: (context, state) {
      if (state is NewsetBooksSuccess) {
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: BestSellerListViewItem(book: state.books[index]),
            );
          },
        );
      } else if (state is NewsetBooksFailure) {
        return CustomErrorWidget(errorMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
