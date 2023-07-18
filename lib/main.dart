import 'package:bookly/Features/home/data/presentation/mananger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/data/presentation/mananger/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imple.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'core/utils/add_router.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                ..featchFeaturedBooks()),
          BlocProvider(
              create: (context) => NewsetBooksCubit(getIt.get<HomeRepoImpl>())),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
          ).copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        ));
  }
}
