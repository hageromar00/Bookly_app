import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());
  final HomeRepo homeRepo;
  // Future<void> fetchFeatureBook() async {
  //   emit(FeaturedBooksLoading());
  //   var result = await homeRepo.FeatureBooks();
  //   result.fold((failure) {
  //     emit(FeaturedBooksFailure(failure.errMessage));
  //   }, (books) {
  //     emit(FeaturedBooksSuccess(books));
  //   });
  // }
  Future<void> fetchFeatureBook() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.FeatureBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
