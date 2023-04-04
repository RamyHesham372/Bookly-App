import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/features/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchedBook(
      {required String txt});
}
