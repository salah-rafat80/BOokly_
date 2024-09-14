import 'package:bookly/features/home/data/Model/books/books.dart';

abstract class AllbooksState {}

class AllbooksInitial extends AllbooksState {}

class AllbooksLoading extends AllbooksState {}

class AllbooksLoaded extends AllbooksState {
  final List<Books>? books;
  AllbooksLoaded(this.books);
}

class AllbooksError extends AllbooksState {
  final String error;
  AllbooksError(this.error);
}
