import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/core/common/models/error_model.dart';
import 'package:task/core/common/models/errors_list_model.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.unprocessableEntity(String reason) =
      UnprocessableEntity;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions handleResponse(Response? response) {
    // Parse the response data into an ErrorModel object
    ErrorModel listOfErrors = ErrorModel.fromJson(response?.data);
    String allErrors = "";

    // Log the raw error message for debugging purposes
    log("message ====>>> ${listOfErrors.message}");

    // Ensure that the message is not null and append it to the error string
    if (listOfErrors.message != null && listOfErrors.message!.isNotEmpty) {
      allErrors = listOfErrors.message!;
    }

    // Handle any other error fields like password, email, or phone
    if (listOfErrors.errors != null) {
      ErrorsListModel errors = ErrorsListModel.fromJson(listOfErrors.errors!);

      // Check and append password error if present
      if (errors.password != null && errors.password!.isNotEmpty) {
        allErrors += "\n${errors.password!.first}";
      }

      // Check and append email error if present
      if (errors.email != null && errors.email!.isNotEmpty) {
        allErrors += "\n${errors.email!.first}";
      }

      // Check and append phone number error if present
      if (errors.phoneNumber != null && errors.phoneNumber!.isNotEmpty) {
        allErrors += "\n${errors.phoneNumber!.first}";
      }
    }

    // Check for any additional error message outside of "errors" field
    if (listOfErrors.password != null && listOfErrors.password!.isNotEmpty) {
      allErrors += "\n${listOfErrors.password!.first}";
    }

    if (listOfErrors.error != null && listOfErrors.error!.isNotEmpty) {
      allErrors += "\n${listOfErrors.error!}";
    }

    // Log the final error message for debugging purposes
    log("message 11====>>> $allErrors");

    // Get the status code from the response, defaulting to 0 if not present
    int statusCode = response?.statusCode ?? 0;

    // Handle different HTTP status codes
    if (response != null) {
      switch (statusCode) {
        case 400: // Bad Request
        case 401: // Unauthorized
          return NetworkExceptions.unauthorizedRequest(allErrors);
        case 403: // Forbidden
          return NetworkExceptions.unauthorizedRequest(allErrors);
        case 404: // Not Found
          return NetworkExceptions.notFound(allErrors);
        case 409: // Conflict
          return const NetworkExceptions.conflict();
        case 408: // Request Timeout
          return const NetworkExceptions.requestTimeout();
        case 422: // Unprocessable Entity
          try {
            return NetworkExceptions.unprocessableEntity(allErrors);
          } catch (_) {
            return const NetworkExceptions.unprocessableEntity(
                "Unknown error occurred");
          }
        case 500: // Internal Server Error
          return const NetworkExceptions.internalServerError();
        case 503: // Service Unavailable
          return const NetworkExceptions.serviceUnavailable();
        default: // Any other status code
          var responseCode = statusCode;
          return NetworkExceptions.defaultError(
              "Received invalid status code: $responseCode");
      }
    }

    // Return unexpected error in case something else happens
    return const NetworkExceptions.unexpectedError();
  }

  // static NetworkExceptions handleResponse(Response? response) {
  //   ErrorModel listOfErrors = ErrorModel.fromJson(response?.data);
  //   String allErrors = "";
  //   log("message ====>>> ${listOfErrors.message}");
  //   if (listOfErrors.message != null) {
  //     allErrors = allErrors.isNotEmpty
  //         ? "\n${listOfErrors.message!}"
  //         : listOfErrors.message!;
  //   }
  //   if (listOfErrors.errors != null) {
  //     ErrorsListModel errors = ErrorsListModel.fromJson(listOfErrors.errors!);
  //     if (errors.password != null) {
  //       allErrors += allErrors.isNotEmpty
  //           ? "\n${errors.password!.first}"
  //           : errors.password!.first;
  //     }
  //     if (errors.email != null) {
  //       allErrors += allErrors.isNotEmpty
  //           ? "\n${errors.email!.first}"
  //           : errors.email!.first;
  //     }
  //     if (errors.phoneNumber != null) {
  //       allErrors += allErrors.isNotEmpty
  //           ? "\n${errors.phoneNumber!.first}"
  //           : errors.phoneNumber!.first;
  //     }
  //   }
  //   if (listOfErrors.password != null) {
  //     allErrors = allErrors.isNotEmpty
  //         ? "\n${listOfErrors.password!.first}"
  //         : listOfErrors.password!.first;
  //   }
  //   if (listOfErrors.error != null) {
  //     allErrors = allErrors.isNotEmpty
  //         ? "\n${listOfErrors.error!}"
  //         : listOfErrors.error!;
  //   }
  //   log("message 11====>>> ${listOfErrors.message}");
  //   int statusCode = response?.statusCode ?? 0;
  //   if (response != null) {
  //     switch (statusCode) {
  //       case 400:
  //       case 401:
  //         return NetworkExceptions.unauthorizedRequest(statusCode.toString());
  //       case 403:
  //         return NetworkExceptions.unauthorizedRequest(statusCode.toString());
  //       case 404:
  //         return NetworkExceptions.notFound(allErrors);
  //       case 409:
  //         return const NetworkExceptions.conflict();
  //       case 408:
  //         return const NetworkExceptions.requestTimeout();
  //       case 422:
  //         try {
  //           return NetworkExceptions.unprocessableEntity(allErrors);
  //         } catch (_) {
  //           return const NetworkExceptions.unprocessableEntity(
  //               "Unknown error occurred");
  //         }
  //       case 500:
  //         return const NetworkExceptions.internalServerError();
  //       case 503:
  //         return const NetworkExceptions.serviceUnavailable();
  //       default:
  //         var responseCode = statusCode;
  //         return NetworkExceptions.defaultError(
  //           "Received invalid status code: $responseCode",
  //         );
  //     }
  //   }
  //   // Handle other cases or return a default error
  //   return const NetworkExceptions.unexpectedError();
  // }

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioExceptionType.connectionError:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badResponse:
              print("DioExceptionType.badResponse >>>>>>>>>>>>>>>>");
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response);
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badCertificate:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioExceptionType.unknown:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (_) {
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(notImplemented: () {
      errorMessage = "Not Implemented";
    }, requestCancelled: () {
      errorMessage = "Request Cancelled";
    }, internalServerError: () {
      errorMessage = "Internal Server Error";
    }, notFound: (String reason) {
      log("reason ====>>> $reason");
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = "Service unavailable";
    }, methodNotAllowed: () {
      errorMessage = "Method Allowed";
    }, badRequest: () {
      errorMessage = "Bad request";
    }, unauthorizedRequest: (String error) {
      errorMessage = error;
    }, unprocessableEntity: (String error) {
      errorMessage = error;
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
