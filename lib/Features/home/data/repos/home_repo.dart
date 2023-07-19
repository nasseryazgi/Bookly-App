import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/faliures.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchNewserBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
