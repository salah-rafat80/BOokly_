import 'package:bookly/core/Network/api_service.dart';
import 'package:bookly/core/error/error.dart';
import 'package:bookly/features/home/data/Model/books/books.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplement(this.apiService);
  @override
  Future<Either<ServerError, List<Books>>> getAllBooks() async {
    List<Books> books = [];
    try {
      var data = await apiService.get(
          Endpoint: "v1/volumes?q=programming&Filtering=free_ebooks");
      for (var item in data['items']) {
        books.add(Books.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerError(e.toString()));
    }
  }

  @override
  Future<Either<ServerError, List<Books>>> getNewsBooks() async {
    List<Books> books = [];
    try {
      var data = await apiService.get(Endpoint: "v1/volumes?q=news");
      for (var item in data['items']) {
        books.add(Books.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerError(e.toString()));
    }
  }
}
