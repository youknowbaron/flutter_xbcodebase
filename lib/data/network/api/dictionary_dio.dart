import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'logger_intercepter.dart';

part 'dictionary_dio.g.dart';

class DictionaryDio extends DioForNative {
  DictionaryDio()
      : super(BaseOptions(
          baseUrl: baseUrl,
        ));

  static String baseUrl = 'https://api.dictionaryapi.dev/api/v2/entries/en';

  Future<Response<T>> searchWord<T>(String word) {
    final path = '/$word';
    final options = Options(headers: {
      'Accept': '*/*',
    });
    return super.get(path, options: options);
  }
}

@Riverpod(keepAlive: true)
DictionaryDio dictionaryDio(Ref ref) {
  final dio = DictionaryDio();
  if (kDebugMode) {
    final dioLoggerInterceptor = ref.read(loggerInterceptorProvider);
    dio.interceptors.add(dioLoggerInterceptor);
  }
  return dio;
}
