import 'dart:async';

import 'package:dio/dio.dart';
import 'package:memorise_vocabulary/core/loggers/logger.dart';

import '../../../domain/base/api_failure.dart';
import '../../../domain/base/api_result.dart';
import 'dio_extensions.dart';

mixin DioBroker {
  Future<ApiResult<T>> mapResponseToResult<T>(
    Future<Response> call, {
    required FutureOr<T> Function(dynamic data) converter,
    String? errorMessage,
    Function(T)? onSuccess,
  }) async {
    try {
      final response = await call;
      final result = await converter(response.data);

      if (result != null) {
        onSuccess?.call(result);
        return ApiResult.data(result);
      }
      return const ApiResult.failure();
    } on DioException catch (e) {
      if (e.isNoConnectionError) {
        return const ApiResult.failure(ApiFailure.noConnection());
      }

      final response = e.response;
      if (response != null) {
        return ApiResult.failure(ApiFailure.http(
          response.statusCode,
          message: errorMessage,
        ));
      } else {
        return const ApiResult.failure();
      }
    } catch (err) {
      logger.e(err);
      return const ApiResult.failure(ApiFailure.unknown());
    }
  }
}
