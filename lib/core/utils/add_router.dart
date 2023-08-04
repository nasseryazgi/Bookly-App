import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imple.dart';
import 'package:bookly/Features/search/preesentation/manager/searchbook_cubit.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';
import '../../Features/home/presentation/mananger/similer_books_cubit/similer_books_cubit.dart';
import '../../Features/home/presentation/views/books_details_view.dart';
import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/search/data/repos/search_repo_imple.dart';
import '../../Features/search/preesentation/views/search_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', //Points Start
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          child: BooksDetailsView(bookModel: state.extra as BookModel),
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context,  tate) {
          return BlocProvider(
            create: (context) => SearchbookCubit(getIt.get<SearchRepoImple>()),
            child: const SearchView(),
          );
        },
      ),
  //     GoRoute(
  //       path: kSearchView,
  //       builder: (context, state) => BlocProvider(
  //       child: SearchView(bookModel: state.extra as BookModel),
  //       create: (context) => SearchbookCubit(getIt.get<SearchRepoImple>()),
  // ),)
    ],
  );
}
