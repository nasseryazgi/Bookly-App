import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({Key? key,  this.mainAxisAlignment=MainAxisAlignment.start}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment ,
      children:  [
        const Icon(

          FontAwesomeIcons.solidStar,
          size: 15,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(opacity:0.5 ,
          child: Text(
            '(245)',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
