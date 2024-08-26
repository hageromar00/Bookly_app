import 'package:bookly_app/core/utils/service_api.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(ApiService()));
  getIt.registerSingleton<ApiService>(ApiService());
   getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
