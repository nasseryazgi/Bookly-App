import 'package:equatable/equatable.dart';

import '../../../home/data/models/book_model/book_model.dart';

abstract class SearchbookState extends Equatable {
  const SearchbookState();
  @override
  List<Object> get props => [];
}

class SearchbookInitial extends SearchbookState {}
class SearchbookSuccers extends SearchbookState {
  final List<BookModel> book;
  const SearchbookSuccers(this.book);
}

class SearchbookError extends SearchbookState {
  final String errormessage;
  const SearchbookError(this.errormessage);
}

class SearchbookLoading extends SearchbookState {}