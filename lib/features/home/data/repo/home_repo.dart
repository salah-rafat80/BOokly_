import 'package:bookly/core/error/error.dart';
import 'package:bookly/features/home/data/Model/books/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<ServerError, List<Books>>> getAllBooks();
  Future<Either<ServerError, List<Books>>> getNewsBooks();
}
