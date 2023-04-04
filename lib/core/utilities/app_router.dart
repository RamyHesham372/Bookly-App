import 'package:booklyapp/core/utilities/service_locator.dart';
import 'package:booklyapp/features/home/data/models/Book_model.dart';
import 'package:booklyapp/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/book_details_view.dart';
import 'package:booklyapp/features/home/presentation/views/home_view.dart';
import 'package:booklyapp/features/search/presentation/views/search_view.dart';
import 'package:booklyapp/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';

  /// The route configuration.
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: homeView, builder: (context, state) => const HomeView()),
      GoRoute(
          path: searchView, builder: (context, state) => const SearchView()),
      GoRoute(
          path: bookDetailsView,
          builder: (context, state) => BlocProvider(
              create: (context) =>
                  SimilarBooksCubit(MySingleton.mySingletonHomeRepo()),
              child: BookDetailsView(
                bookModel: state.extra as BookModel,
              ))),
    ],
  );
}
