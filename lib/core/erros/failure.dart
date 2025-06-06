import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failure {
  final String responseMessage;

  const Failure({required this.responseMessage});
}

class GeneralFailure extends Failure {
  final String message;
  const GeneralFailure({required this.message})
    : super(responseMessage: message);
}

class NetworkException implements Exception {
  late final String message;
  late final int? statusCode;

  NetworkException.fromDioError(DioException dioException) {
    statusCode = dioException.response?.statusCode;

    switch (dioException.type) {
      case DioExceptionType.cancel:
        message = 'Request to API server was cancelled';
        break;

      case DioExceptionType.connectionTimeout:
        message = 'Connection timeout with API server';
        break;

      case DioExceptionType.receiveTimeout:
        message = 'Receive timeout in connection with API server';
        break;

      case DioExceptionType.sendTimeout:
        message = 'Send timeout in connection with API server';
        break;

      case DioExceptionType.connectionError:
        if (dioException.error.runtimeType == SocketException) {
          message = 'Please check your internet connection';
          break;
        } else {
          message = 'Unexpected error occurred';
          break;
        }

      case DioExceptionType.badCertificate:
        message = 'Bad Certificate';
        break;

      case DioExceptionType.unknown:
        message = 'Unexpected error occurred';
        break;

      case DioExceptionType.badResponse:
        message = 'Unexpected error occurred';
        throw UnimplementedError();
    }
  }
}
