import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.formDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');

      case DioErrorType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive Timeout with ApiServer');

      case DioErrorType.badCertificate:
        return ServerFailure('Bad Certificate  with ApiServer');

      case DioErrorType.badResponse:
        return ServerFailure.fromBadResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer canceled');

      case DioErrorType.connectionError:
        return ServerFailure('Connection Error with ApiServer');

      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, please try again!');

      default:
        return ServerFailure('Oops There was an Error, please try again!');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try later!');
    } else {
      return ServerFailure('Oops There was an Error, please try again!');
    }
  }
}
