import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../manager/searchbook_cubit.dart';

class CustomSearchTextField extends StatelessWidget {
   CustomSearchTextField({Key? key, required this.searchbookCubit}) : super(key: key);
final TextEditingController textEditingController  = TextEditingController();
  late  String data='' ;
  final SearchbookCubit searchbookCubit ;

   Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: textEditingController,
          //cursorColor: Colors.blueGrey,
          decoration: InputDecoration(
              hintText: 'Search',
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              suffixIcon: IconButton(
                  onPressed: () {
                    searchbookCubit.featurecustombook(text: textEditingController.text);
                  },
                  icon: const Opacity(
                    opacity: 0.7,
                    child: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 22,
                    ),
                  ))),

        ),  const SizedBox(
          height: 18,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "Search Result :",
            style: Styles.textStyle20,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white30),
        borderRadius: BorderRadius.circular(15));
  }
}
