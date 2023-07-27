
import 'package:dartz/dartz.dart';

import '../../../../core/errors/faliures.dart';
import '../../../home/data/models/book_model/book_model.dart';

abstract class SearchRepo{
  Future<Either<Failures,List<BookModel>>>searchBookName({required String bookName});
}