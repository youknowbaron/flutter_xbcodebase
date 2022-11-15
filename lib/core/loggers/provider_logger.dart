import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'logger.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    logger.wtf(
        'provider: ${provider.name ?? provider.runtimeType} was created.\nvalue: $value');
  }

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.wtf(
        'previousValue: $previousValue\nprovider: ${provider.name ?? provider.runtimeType},\nnewValue: $newValue\n');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    logger
        .wtf('provider: ${provider.name ?? provider.runtimeType} was disposed.');
  }
}
