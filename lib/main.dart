import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/views_model/featurebooks/feature_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views_model/newestbooks/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (Context) => FeatureBookCubit(getIt.get<HomeRepoImpl>())
              ..fetchFeatureBook()),
        BlocProvider(
            create: (Context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kColor,
            textTheme:
                // GoogleFonts.abelTextTheme(ThemeData.dark().textTheme)
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        // home: const SplashView(),
      ),
    );
  }
}
