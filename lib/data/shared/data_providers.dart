import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/flavors.dart';
import '../network/api/authentication_intercepter.dart';
import '../network/api/logger_intercepter.dart';

final _authBaseOptionsProvider = Provider<BaseOptions>(
  (_) => BaseOptions(
    baseUrl: F.authUrl,
    connectTimeout: const Duration(milliseconds: 3000),
    receiveTimeout: const Duration(milliseconds: 3000),
    followRedirects: false,
    headers: {
      'Content-Type': 'application/json',
    },
  ),
);

final _baseOptions = Provider<BaseOptions>(
  (_) => BaseOptions(
    baseUrl: F.baseUrl,
    connectTimeout: const Duration(milliseconds: 3000),
    receiveTimeout: const Duration(milliseconds: 3000),
    followRedirects: false,
    headers: {
      'Content-Type': 'application/json',
    },
  ),
);

final firestoreProvider = Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);

final basicDioProvider = Provider<Dio>((ref) {
  final dio = Dio()..options = ref.read(_authBaseOptionsProvider);
  if (kDebugMode) {
    dio.interceptors.add(ref.read(loggerInterceptorProvider));
  }
  return dio;
});

final goodBoyDioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  final authenticationInterceptor = ref.watch(authenticationInterceptorProvider);
  final dioLoggerInterceptor = ref.read(loggerInterceptorProvider);
  dio
    ..options = ref.read(_baseOptions)
    ..options.validateStatus = ((status) => status != null && status >= 200 && status < 400)
    ..interceptors.addAll(
      [
        authenticationInterceptor,
        if (kDebugMode) dioLoggerInterceptor,
      ],
    );

  return dio;
});

final storageProvider = Provider<FlutterSecureStorage>(
  (ref) => const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  ),
);
