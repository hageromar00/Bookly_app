part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksLoad extends SimilarBooksState {}
class SimilarBooksSuccess extends SimilarBooksState {}
class SimilarBooksFail extends SimilarBooksState {}


