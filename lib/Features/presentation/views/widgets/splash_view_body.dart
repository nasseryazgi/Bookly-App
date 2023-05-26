import 'package:flutter/cupertino.dart';

import '../../../../core/utils/assets.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();

    // TODO: implement initState
    animationController =
        AnimationController(vsync: this, duration: const Duration(minutes: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
            .animate(animationController);
    slidingAnimation.addListener(() {
      setState(() {});
    });

    dispose();
  }

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
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}
