import 'package:bookly/features/home/data/Model/books/books.dart';

abstract class NewsbooksState {}

class NewsbooksInitial extends NewsbooksState {}

class NewsbooksLoaded extends NewsbooksState {
  final List<Books>? books;
  NewsbooksLoaded(this.books);
}

class NewsbooksLoading extends NewsbooksState {}

class NewsbooksError extends NewsbooksState {
  final String error;
  NewsbooksError(this.error);
}
