import 'package:booklyapp/features/search/data/search_repo/search_repo.dart';
import 'package:booklyapp/features/search/presentation/search_manager/search_cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchedBook({required String txt}) async {
    emit(SearchBooksLoading());

    var result = await searchRepo.fetchSearchedBook(txt: txt);

    result.fold((failure) {
      emit(SearchBooksFailure(failure.errorMessage));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
