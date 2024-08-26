import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/service_api.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
   Future<Either<Failure, List<BookModel>>> NewestBooks() async {
    try {
      var data = await apiService.getService(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
  // Future<Either<Failure, List<BookModel>>> NewestBooks() async {
  //   try {
  //     var data = await apiService.getService(
  //         endPoint:
  //             'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
  //     List<BookModel> books = [];
  //     for (var item in data['items']) {
  //       books.add(BookModel.fromJson(item));
  //     }
  //     return right(books);
  //   } catch (e) {
  //     if (e is DioError) {
  //       return left(ServerFailure.fromDioError(e));
  //     }
  //     return left(
  //       ServerFailure(
  //         e.toString(),
  //       ),
  //     );
  //     // return left(ServerFailure(e.toString()));
  //   }
  // }


  
  @override
  Future<Either<Failure, List<BookModel>>> FeatureBooks() async {
    try {
      var data = await apiService.getService(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  // @override
  // Future<Either<Failure, List<BookModel>>> FeatureBooks() async{
  //      try {
  //     var data = await apiService.getService(
  //         endPoint:
  //             'volumes?Filtering=free-ebooks&q=subject:programming');
  //     List<BookModel> books = [];
  //     for (var item in data['items']) {
  //       books.add(BookModel.fromJson(item));
  //     }
  //     return right(books);
  //   } catch (e) {
  //     if (e is DioError) {
  //       return left(ServerFailure.fromDioError(e));
  //     }
  //     return left(
  //       ServerFailure(
  //         e.toString(),
  //       ),
  //     );
  //     // return left(ServerFailure(e.toString()));
  //   }
  // }
  
  // @override
  // Future<Either<Failure, List<BookModel>>> NewestBooks() {
  //   // TODO: implement NewestBooks
  //   throw UnimplementedError();
  // }
}
