import 'package:flutter/cupertino.dart';

import 'custom_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}
