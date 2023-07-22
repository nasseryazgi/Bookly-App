import 'package:bookly/Features/home/data/presentation/mananger/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly/Features/home/data/presentation/mananger/similer_books_cubit/similer_books_state.dart';
import 'package:bookly/Features/home/data/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/errors/faliures.dart';
import 'package:bookly/core/utils/custom_error.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl:
                        'https://th.bing.com/th/id/OIP.b5gIzNpt5ljYBeRnjUrCcAHaEA?pid=ImgDet&rs=1',
                  ),
                );
              }),
        );
      } else if (state is SimilarBooksFailure) {
        return CustomErrorWidget(errorMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
