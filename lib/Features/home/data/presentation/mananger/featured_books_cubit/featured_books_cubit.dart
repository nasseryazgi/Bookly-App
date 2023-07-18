import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/presentation/mananger/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/faliures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  void featchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) => emit(FeaturedBooksFaliure(failure.errorMessage)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
