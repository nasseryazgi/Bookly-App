import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/faliures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  ApiService apiService;
  HomeRepoImpl(this.apiService);
  Future<Either<Failures, List<BookModel>>> fetchnewserBooks() async {
    var data = await apiService.get(
        endPoint:
            'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest &q=java');

    List<BookModel> books = [];

    try {
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint:
            'https://www.googleapis.com/books/v1/volumes?q=computer science');

    List<BookModel> books = [];

    try {
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
