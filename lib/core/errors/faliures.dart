import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;
  Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);
// Request (Status Code SAVED)
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connect timeout with ApiSever');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiSever');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiSever');
      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
        return ServerFailure.fromReponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Sever was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internt Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error , please try agian');
      default:
        return ServerFailure('Opps There was an Error , please try agin');
    }
  }

  factory ServerFailure.fromReponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 403 || statusCode == 401) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request Not Fount,Please  try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error ,Please  try later!');
    } else {
      return ServerFailure('Opps There was an Error , please try agin!');
    }
  }
}
