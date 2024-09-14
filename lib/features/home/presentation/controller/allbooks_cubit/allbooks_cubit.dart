import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:bookly/features/home/presentation/controller/allbooks_cubit/allbooks_state.dart';

class AllbooksCubit extends Cubit<AllbooksState> {
  AllbooksCubit(this.homeRepo) : super(AllbooksInitial());
  final HomeRepo homeRepo;
  getAllBooks() async {
    emit(AllbooksLoading());
    var result = await homeRepo.getAllBooks();
    result.fold((error) {
      emit(AllbooksError(error.toString()));
    }, (books) {
      emit(AllbooksLoaded(books));
    });
  }
}
