import 'package:memorise_vocabulary/tunnels.dart';

mixin FirestoreBroker {
  Future<ApiResult<T>> mapResponseToResult<T>(
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
      return const ApiResult.failure();
    }
  }

  // Wrapping data by user_id
  Map<String, dynamic> wrapData(FirebaseAuth auth, Map<String, dynamic> data) {
    if (auth.currentUser?.uid == null) {
      throw AssertionError('userId == null');
    }
    return {
      'user_id': auth.currentUser!.uid,
      'created_at': Timestamp.now(),
    }..addAll(data);
  }
}
