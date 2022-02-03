import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

@freezed
class ServerExceptions with _$ServerExceptions {
  factory ServerExceptions.requestCancelled() = RequestCancelled;

  factory ServerExceptions.unauthorizedRequest() = UnauthorizedRequest;

  factory ServerExceptions.badRequest() = BadRequest;

  factory ServerExceptions.notFound(String reason) = NotFound;

  factory ServerExceptions.methodNotAllowed() = MethodNotAllowed;

  factory ServerExceptions.notAcceptable() = NotAcceptable;

  factory ServerExceptions.requestTimeout() = RequestTimeout;

  factory ServerExceptions.sendTimeout() = SendTimeout;

  factory ServerExceptions.conflict() = Conflict;

  factory ServerExceptions.internalServerError() = InternalServerError;

  factory ServerExceptions.notImplemented() = NotImplemented;

  factory ServerExceptions.serviceUnavailable() = ServiceUnavailable;

  factory ServerExceptions.noInternetConnection() = NoInternetConnection;

  factory ServerExceptions.formatException() = FormatException;

  factory ServerExceptions.unableToProcess() = UnableToProcess;

  factory ServerExceptions.defaultError(String error) = DefaultError;

  factory ServerExceptions.unexpectedError() = UnexpectedError;

  static ServerExceptions handleResponse(int? statusCode) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return ServerExceptions.unauthorizedRequest();
      case 404:
        return ServerExceptions.notFound("Not found");
      case 409:
        return ServerExceptions.conflict();
      case 408:
        return ServerExceptions.requestTimeout();
      case 500:
        return ServerExceptions.internalServerError();
      case 503:
        return ServerExceptions.serviceUnavailable();
      default:
        var responseCode = statusCode;
        return ServerExceptions.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

  static ServerExceptions getDioException(error) {
    if (error is Exception) {
      try {
        ServerExceptions serverExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              serverExceptions = ServerExceptions.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              serverExceptions = ServerExceptions.requestTimeout();
              break;
            case DioErrorType.other:
              serverExceptions = ServerExceptions.noInternetConnection();
              break;
            case DioErrorType.receiveTimeout:
              serverExceptions = ServerExceptions.sendTimeout();
              break;
            case DioErrorType.response:
              serverExceptions = ServerExceptions.handleResponse(error.response!.statusCode);
              break;
            case DioErrorType.sendTimeout:
              serverExceptions = ServerExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          serverExceptions = ServerExceptions.noInternetConnection();
        } else {
          serverExceptions = ServerExceptions.unexpectedError();
        }
        return serverExceptions;
      } on FormatException {
        // Helper.printError(e.toString());
        return ServerExceptions.formatException();
      } catch (_) {
        return ServerExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return ServerExceptions.unableToProcess();
      } else {
        return ServerExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(ServerExceptions serverExceptions) {
    var errorMessage = "";
    serverExceptions.when(notImplemented: () {
      errorMessage = "Not Implemented";
    }, requestCancelled: () {
      errorMessage = "Request Cancelled";
    }, internalServerError: () {
      errorMessage = "Internal Server Error";
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = "Service unavailable";
    }, methodNotAllowed: () {
      errorMessage = "Method Allowed";
    }, badRequest: () {
      errorMessage = "Bad request";
    }, unauthorizedRequest: () {
      errorMessage = "Unauthorized request";
    }, unexpectedError: () {
      errorMessage = "Unexpected error occurred";
    }, requestTimeout: () {
      errorMessage = "Connection request timeout";
    }, noInternetConnection: () {
      errorMessage = "No internet connection";
    }, conflict: () {
      errorMessage = "Error due to a conflict";
    }, sendTimeout: () {
      errorMessage = "Send timeout in connection with API server";
    }, unableToProcess: () {
      errorMessage = "Unable to process the data";
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = "Unexpected error occurred";
    }, notAcceptable: () {
      errorMessage = "Not acceptable";
    });
    return errorMessage;
  }
}

class CacheException implements Exception {}
