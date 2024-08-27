import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> similarBook({required String category}) async {
    emit(SimilarBooksLoad());
    var result = await homeRepo.SimilarBooks(cate: category);
    result.fold((fail) {
      emit(SimilarBooksFail());
    }, (bookss) {
      emit(SimilarBooksSuccess());
    });
  }
}
