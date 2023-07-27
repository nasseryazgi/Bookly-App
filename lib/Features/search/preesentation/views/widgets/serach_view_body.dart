import 'package:bookly/Features/search/preesentation/views/widgets/search_result_view.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_search_text.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(backgroundColor: Color(0xff100e20),title: Text('Search book'),centerTitle: true
          ,),
      body:const  Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            CustomSearchTextField(),
            SizedBox(
              height: 16,
            ),
            Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(child: SearchResultView())
          ],
        ),
      ),
    );
  }
}

