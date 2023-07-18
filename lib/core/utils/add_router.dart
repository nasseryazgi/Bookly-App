import 'package:bookly/Features/home/data/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/data/presentation/views/books_details_view.dart';
import '../../Features/Splash/views/splash_view.dart';
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
        builder: (context, state) => const BooksDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
