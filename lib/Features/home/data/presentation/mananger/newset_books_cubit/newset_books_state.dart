import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class NewsetBooksState extends Equatable {
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksLoading extends NewsetBooksState {}

class NewsetBooksSuccess extends NewsetBooksState {
  List<BookModel> books;
  NewsetBooksSuccess(this.books);
}

class NewsetBooksFailure extends NewsetBooksState {
  final String errMessage;

  NewsetBooksFailure(this.errMessage);
}
