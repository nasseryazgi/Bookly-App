import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:bookly/Features/search/preesentation/manager/searchbook_cubit.dart';
import 'package:bookly/Features/search/preesentation/manager/searchbook_state.dart';
import 'package:bookly/Features/search/preesentation/views/widgets/search_list_view.dart';
import 'package:bookly/Features/search/preesentation/views/widgets/search_result_view.dart';
import 'package:bookly/core/utils/custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/best_saller_listview_item.dart';
import 'custom_search_text.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff100e20),
        title: const Text('Search book'),
        centerTitle: true,
      ),
      body: BlocBuilder<SearchbookCubit , SearchbookState>(
        builder: (context,state)
      {return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      CustomSearchTextField(searchbookCubit: BlocProvider.of<SearchbookCubit>(context)),
        if(state is SearchbookSucess)
          Expanded(
            child: ListView.builder(
             // physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.bookCustom.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: BestSellerListViewItem(book: state.bookCustom[index]),
                );
              },
            ),
          ),
        //
          if (state is SearchbookError)
             CustomErrorWidget(errorMessage: state.errMessage),
        if(state is SearchbookLoading || state is SearchbookInitial)
           CustomLoadingIndicator(),

        ]);
      },
    ));
  }
}
// Padding(
// padding: EdgeInsets.symmetric(horizontal: 30.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// const SizedBox(
// height: 30,
// ),
// CustomSearchTextField(
// searchbookCubit: null,
// ),
// Expanded(child: SearchResultView())
// ],
// ),
// )