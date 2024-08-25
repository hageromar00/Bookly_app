part of 'feature_book_cubit.dart';

abstract class FeatureBookState extends Equatable {
  const FeatureBookState();

  @override
  List<Object> get props => [];
}

class FeatureBookInitial extends FeatureBookState {}
class FeaturedBooksLoading extends FeatureBookState {}

class FeaturedBooksFailure extends FeatureBookState {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}

class FeaturedBooksSuccess extends FeatureBookState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}
