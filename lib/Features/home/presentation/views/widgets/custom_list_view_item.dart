import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          height: 100,
          //  width: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              //color: Colors.black,
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AassetsData.testImage))),
        ),
      ),
    );
  }
}
