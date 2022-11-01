import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class LoggerInterceptor extends Interceptor {
  final Logger _logger;

  LoggerInterceptor(this._logger);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String headers = '';
    options.headers.forEach((key, value) {
      headers += '| $key: $value';
    });
    _logger.i(
        '[DIO] Request: ${options.method} ${options.uri}\n${options.data.toString()}\n Headers:\n$headers');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.i(
        '[DIO] Path: ${response.requestOptions.uri} Response [code ${response.statusCode}]: ${response.data.toString()}');
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    _logger.e(
        '[DIO] Path: ${err.requestOptions.uri} Error: ${err.error}: ${err.response?.toString()}');
    handler.next(err);
  }
}
