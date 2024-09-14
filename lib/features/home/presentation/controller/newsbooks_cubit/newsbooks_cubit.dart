import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:bookly/features/home/presentation/controller/newsbooks_cubit/newsbooks_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsbooksCubit extends Cubit<NewsbooksState> {
  NewsbooksCubit(this.homeRepo) : super(NewsbooksInitial());
  final HomeRepo homeRepo;
  getNewsBooks() async {
    emit(NewsbooksLoading());
    var result = await homeRepo.getNewsBooks();
    result.fold((error) {
      emit(NewsbooksError(error.toString()));
    }, (books) {
      emit(NewsbooksLoaded(books));
    });
  }
}
