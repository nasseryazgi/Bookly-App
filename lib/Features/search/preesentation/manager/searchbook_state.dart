import 'package:equatable/equatable.dart';

import '../../../home/data/models/book_model/book_model.dart';

abstract class SearchbookState extends Equatable {
  const SearchbookState();
  @override
  List<Object> get props => [];
}

class SearchbookInitial extends SearchbookState {}
class SearchbookSucess extends SearchbookState {
  final List<BookModel> bookCustom;
  const SearchbookSucess(this.bookCustom);
}

class SearchbookError extends SearchbookState {
  final String errMessage;
  const SearchbookError(this.errMessage);
}

class SearchbookLoading extends SearchbookState {}