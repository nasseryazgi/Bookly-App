import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/presentation/views/splash_view.dart';
import 'constants.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ).copyWith(scaffoldBackgroundColor: kPrimaryColor , textTheme: TextTheme(

      )),
      home: const SplashView(),
    );
  }
}
