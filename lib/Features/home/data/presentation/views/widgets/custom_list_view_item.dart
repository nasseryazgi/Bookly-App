import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);
  @override
  final String imageUrl;
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        height: 100,
        //  width: MediaQuery.of(context).size.height * .25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            //color: Colors.black,
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(imageUrl))),
      ),
    );
  }
}
