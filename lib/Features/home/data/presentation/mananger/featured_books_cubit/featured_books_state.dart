import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

class FeaturedBooksState extends Equatable {
  List<Object?> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFaliure extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksFaliure(this.errorMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}
