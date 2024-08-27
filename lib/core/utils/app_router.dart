import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_views.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/home/presentation/views_model/similarnewestbooks/similar_books_cubit.dart';
import 'package:bookly_app/features/search/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KbookDetail = '/BookDetailsViews';
  static const KSearch = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeview',
        builder: (context, state) => const HomeViews(),
      ),
      GoRoute(
        path: KbookDetail,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsViews(bookmodel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: KSearch,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
