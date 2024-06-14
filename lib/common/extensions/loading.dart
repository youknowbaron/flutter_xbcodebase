import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:memorise_vocabulary/bridges.dart';
import 'package:memorise_vocabulary/domain/base/api_failure.dart';

void showLoading() {
  if (!EasyLoading.isShow) EasyLoading.show();
}

void hideLoading() {
  if (EasyLoading.isShow) EasyLoading.dismiss();
}

extension WidgetRefX on WidgetRef {
  /// Listening to show loading. Show notification popup if occuring error by default,
  /// pass `apiError` or `error` to change error handler.
  void convenienceListen<T, R>(
    AutoDisposeAsyncNotifierProvider<AutoDisposeAsyncNotifier<T>, T> provider,
    R Function(T data) data, {
    R Function(ApiFailure failure, StackTrace stackTrace)? apiError,
    R Function(Object error, StackTrace stackTrace)? error,
  }) {
    listen(
      provider,
      (previous, next) {
        next.when(
          loading: () {
            showLoading();
          },
          data: (value) {
            hideLoading();
            data(value);
          },
          error: (err, stackTrace) {
            hideLoading();
            if (error != null) {
              error.call(err, stackTrace);
              return;
            }
            if (err is ApiFailure) {
              final apiFailure = err;
              if (apiFailure == const ApiFailure.noConnection()) {
                CommonPopup.showNoInternetPopup(context: context);
                return;
              }
              if (apiError != null) {
                apiError(apiFailure, stackTrace);
                return;
              } else {
                apiFailure.whenOrNull(
                  http: (statusCode, message) {
                    if (message != null && message.isNotEmpty) {
                      CommonPopup.showNotificationPopup(context: context, message: message);
                      return;
                    }
                  },
                  other: (errorCode, message, error) {
                    if (message != null && message.isNotEmpty) {
                      CommonPopup.showNotificationPopup(context: context, message: message);
                      return;
                    }
                  },
                  unknown: () {
                    CommonPopup.showNotificationPopup(
                      context: context,
                      message: $strings.unknownErrorMsg,
                    );
                  },
                );
              }
              return;
            }
            CommonPopup.showNotificationPopup(
              context: context,
              message: $strings.unknownErrorMsg,
            );
          },
        );
      },
    );
  }
}
