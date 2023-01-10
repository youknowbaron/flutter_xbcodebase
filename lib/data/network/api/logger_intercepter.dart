import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/loggers/logger.dart';

part 'logger_intercepter.g.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String headers = '';
    options.headers.forEach((key, value) {
      headers += '| $key: $value';
    });
    logger.i(
        '[DIO] Request: ${options.method} ${options.uri}\n${options.data.toString()}\n Headers:\n$headers');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.i(
        '[DIO] Path: ${response.requestOptions.uri} Response [code ${response.statusCode}]: ${response.data.toString()}');
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    logger.e(
        '[DIO] Path: ${err.requestOptions.uri} Error: ${err.error}: ${err.response?.toString()}');
    handler.next(err);
  }
}

@Riverpod(keepAlive: true)
LoggerInterceptor loggerInterceptor(LoggerInterceptorRef ref) {
  return LoggerInterceptor();
}
