// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/presentation/mananger/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
