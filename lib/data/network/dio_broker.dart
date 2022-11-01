import 'package:dio/dio.dart';

import '../../domain/models/api_result.dart';
import 'dio_extensions.dart';

mixin DioBroker {
  Future<ApiResult<T>> mapResponseToResult<T>(
      Future<Response> call, T Function(dynamic data) converter) async {
    try {
      final response = await call;
      final result = converter(response.data);

      if (result != null) {
        return ApiResult.data(result);
      }
      return const ApiResult.failure();
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const ApiResult.noConnection();
      }

      final response = e.response;
      final errorData = response?.data;
      if (response != null) {
        // TODO: Parse error
        return ApiResult.failure(errorCode: response.statusCode?.toString());
      } else {
        return const ApiResult.failure();
      }
    } on Exception catch (e) {
      return ApiResult.failure(message: e.toString());
    } catch (err) {
      return ApiResult.failure(message: err.toString());
    }
  }
}
