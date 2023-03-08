import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/features/Search/presentation/view/search_body.dart';
import 'package:moviesapp/features/home/presentation/home_page_view.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_States.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_cubit.dart';
import 'package:moviesapp/features/home/presentation/details_page_view.dart';
import 'package:moviesapp/features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const kHomePage = '/homePage';
  static const kDetailPage = '/detailPge';
  static const kSearchPage = '/searchpage';


  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(
        path: kHomePage,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(path:kDetailPage,
      builder: (context,state)=> DetailsPageView(
        movies: state.extra as Map,
      )),
      GoRoute(path:kSearchPage,
      builder: (context,state)=>const SearchView())
    ],
  );
}
