import 'package:bookly/Features/home/data/presentation/mananger/newset_books_cubit/newset_books_state.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  void featchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) => emit(NewsetBooksFailure(failure.errorMessage)),
      (books) => emit(NewsetBooksSuccess(books)),
    );
  }
}
