import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_search_text.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [CustomSearchTextField()],
      ),
    );
  }
}

