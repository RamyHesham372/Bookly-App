import 'package:booklyapp/features/home/data/models/Book_model.dart';

abstract class SearchState {
  const SearchState();
}

class SearchInitial extends SearchState {}

class SearchBooksLoading extends SearchState {}

class SearchBooksSuccess extends SearchState {
  final List<BookModel> books;

  const SearchBooksSuccess(this.books);
}

class SearchBooksFailure extends SearchState {
  final String errorMessage;

  const SearchBooksFailure(this.errorMessage);
}
