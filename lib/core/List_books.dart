import 'package:bookly/core/book_poster.dart';
import 'package:bookly/features/home/presentation/controller/allbooks_cubit/allbooks_cubit.dart';
import 'package:bookly/features/home/presentation/controller/allbooks_cubit/allbooks_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListBooks extends StatefulWidget {
  const ListBooks({super.key});

  @override
  State<ListBooks> createState() => _ListBooksState();
}

class _ListBooksState extends State<ListBooks> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllbooksCubit, AllbooksState>(
      builder: (context, state) {
        if (state is AllbooksLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is AllbooksError) {
          return const Center(
            child: Text("Error22222222"),
          );
        } else if (state is AllbooksLoaded) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final volumeInfo = state.books![index].volumeInfo!;
              return BookPoster(
                Info: state.books![index].volumeInfo!,
              );
            },
            itemCount: state.books!.length,
          );
        }
        return const Center(
          child: Text("Error"),
        );
      },
    );
  }
}
