import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/core/utilities/api_service.dart';
import 'package:booklyapp/features/home/data/models/Book_model.dart';
import 'package:booklyapp/features/search/data/search_repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl(this.apiService);

  final ApiService apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBook(
      {required String txt}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=computer science&Sorting=partial');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.formDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
