import 'package:flutter/cupertino.dart';

import '../../../../core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AassetsData.logo),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Read Free Books',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
