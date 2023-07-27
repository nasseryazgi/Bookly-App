import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

class SimilarBooksState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

// ignore: must_be_immutable
class SimilarBooksSuccess extends SimilarBooksState {
  List<BookModel> books;
  SimilarBooksSuccess(this.books);
}

class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;

  SimilarBooksFailure(this.errMessage);
}
