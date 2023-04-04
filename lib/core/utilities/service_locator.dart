import 'package:booklyapp/core/utilities/api_service.dart';
import 'package:booklyapp/features/home/data/repositories/home_repo_impl.dart';
import 'package:dio/dio.dart';

class MySingleton {
  static mySingletonHomeRepo() => HomeRepoImpl(mySingletonApiService());

  static mySingletonApiService() => ApiService(Dio());
}
