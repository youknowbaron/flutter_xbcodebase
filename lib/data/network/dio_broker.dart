import 'package:dio/dio.dart';

import '../../domain/core/api_failure.dart';
import '../../domain/core/api_result.dart';
import 'dio_extensions.dart';

mixin DioBroker {
  Future<ApiResult<T>> mapResponseToResult<T>(
    Future<Response> call, {
    required T Function(dynamic data) converter,
    String? errorMessage,
    Function(T)? onSuccess,
  }) async {
    try {
      final response = await call;
      final result = converter(response.data);

      if (result != null) {
        onSuccess?.call(result);
        return ApiResult.data(result);
      }
      return const ApiResult.failure();
    } on DioError catch (e) {
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
    } on Exception catch (e) {
      return ApiResult.failure(ApiFailure.unknown(message: e.toString()));
    } catch (err) {
      return const ApiResult.failure(ApiFailure.unknown());
    }
  }
}
