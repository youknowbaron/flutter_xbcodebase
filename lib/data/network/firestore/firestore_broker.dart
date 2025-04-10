import 'package:memorise_vocabulary/core/loggers/logger.dart';
import 'package:memorise_vocabulary/domain/base/api_failure.dart';
import 'package:memorise_vocabulary/tunnels.dart';

mixin FirestoreBroker {
  Future<ApiResult<T>> mapQuerySnapshotToResult<T>(
    Future<QuerySnapshot<Map<String, dynamic>>> call, {
    required FutureOr<T> Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> data) converter,
    String? errorMessage,
    Function(T)? onSuccess,
  }) async {
    try {
      final response = await call;
      final result = await converter(response.docs);

      if (result != null) {
        onSuccess?.call(result);
        return ApiResult.data(result);
      }
      return const ApiResult.failure();
    } catch (e) {
      logger.e(e);
      return ApiResult.failure(ApiFailure.other(error: e));
    }
  }

  Future<ApiResult<T>> mapDocumentSnapshotToResult<T>(
    Future<DocumentSnapshot<Map<String, dynamic>>> call, {
    required FutureOr<T> Function(Map<String, dynamic> data) converter,
    String? errorMessage,
    Function(T)? onSuccess,
  }) async {
    try {
      final response = await call;
      final data = response.data();
      if (data == null) {
        return const ApiResult.failure(ApiFailure.http(404, message: 'Document not found'));
      }
      final result = await converter(data);

      if (result != null) {
        onSuccess?.call(result);
        return ApiResult.data(result);
      }
      return const ApiResult.failure();
    } catch (e) {
      logger.e(e);
      return ApiResult.failure(ApiFailure.other(error: e));
    }
  }

  // Wrapping data by user_id
  Map<String, dynamic> wrapDataByUser(FirebaseAuth auth, Map<String, dynamic> data) {
    if (auth.currentUser?.uid == null) {
      throw AssertionError('userId == null');
    }
    return {
      'user_id': auth.currentUser!.uid,
      'created_at': Timestamp.now(),
    }..addAll(data);
  }
}
