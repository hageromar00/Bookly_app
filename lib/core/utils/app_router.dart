import 'package:bookly_app/features/home/presentation/views/book_details_views.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KbookDetail = '/BookDetailsViews';
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
        builder: (context, state) => const BookDetailsViews(),
      ),
    ],
  );
}
