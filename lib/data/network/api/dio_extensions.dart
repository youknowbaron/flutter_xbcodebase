import 'dart:io';

import 'package:dio/dio.dart';

extension DioErrorX on DioException {
  bool get isNoConnectionError {
    // TODO: this statement needs to be test
    return type == DioExceptionType.connectionTimeout &&
        error != null &&
        error is SocketException;
  }
}
