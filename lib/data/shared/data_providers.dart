import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/data/network/api/saavn_dio.dart';

import '../../core/flavors.dart';
import '../../core/loggers/logger.dart';
import '../network/api/authentication_intercepter.dart';
import '../network/api/logger_intercepter.dart';

final _baseOptions = BaseOptions(
  baseUrl: F.authUrl,
  connectTimeout: 3000,
  receiveTimeout: 3000,
  followRedirects: false,
  headers: {
    'Content-Type': 'application/json',
  },
);

final _baseOptions2 = BaseOptions(
  baseUrl: F.baseUrl,
  connectTimeout: 3000,
  receiveTimeout: 3000,
  followRedirects: false,
  headers: {
    'Content-Type': 'application/json',
  },
);

final dioLoggerInterceptorProvider =
    Provider((ref) => LoggerInterceptor(logger));

final basicDioProvider = Provider<Dio>((ref) {
  final dio = Dio()..options = _baseOptions;
  if (kDebugMode) {
    dio.interceptors.add(ref.read(dioLoggerInterceptorProvider));
  }
  return dio;
});

final goodBoyDioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  final authenticationInterceptor =
      ref.watch(authenticationInterceptorProvider);
  final dioLoggerInterceptor = ref.read(dioLoggerInterceptorProvider);
  dio
    ..options = _baseOptions2
    ..options.validateStatus =
        ((status) => status != null && status >= 200 && status < 400)
    ..interceptors.addAll(
      [
        authenticationInterceptor,
        if (kDebugMode) dioLoggerInterceptor,
      ],
    );

  return dio;
});

final authenticationInterceptorProvider = Provider((ref) {
  return AuthenticationInterceptor(
    ref.watch(goodBoyDioProvider),
    ref.watch(storageProvider),
  );
});

final storageProvider = Provider<FlutterSecureStorage>(
  (ref) => const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  ),
);

final saavnDioProvider = Provider<SaavnDio>((ref) {
  final dio = SaavnDio();
  if (kDebugMode) {
    final dioLoggerInterceptor = ref.read(dioLoggerInterceptorProvider);
    dio.interceptors.add(dioLoggerInterceptor);
  }
  return dio;
});
