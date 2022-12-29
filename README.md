# xbcodebase

A new Flutter codebase is coming.

## Core dependencies

- [Riverpod](https://riverpod.dev/docs/getting_started): State management library
- [Hooks](https://pub.dev/packages/flutter_hooks): Less code, more compicated 🥲🥲
- [Dio](https://pub.dev/packages/dio): For communicating with APIs

## Riverpod Generator

- Use `@riverpod` to generate a auto dispose provider.
- Use `@Riverpod(keepAlive: true)` to generate a always keep alive provider.

### Example code

#### Generate a NotifierProvider

```dart
part 'app_settings_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppSettingsNotifier extends _$AppSettingsNotifier {

  @override
  AppSettings build() {
    return AppSettings();
  }
}
````

#### Generate a AsyncNotifierProvider

```dart
part 'authentication_notifier.g.dart';

@riverpod
class AuthenticationNotifier extends _$AuthenticationNotifier {
  @override
  FutureOr<dynamic> build() async {
    return null;
  }
}
```

#### Generate a repository

```dart
part 'song_repository_impl.g.dart';

class SongRepositoryImpl with DioBroker implements SongRepository {
  SongRepositoryImpl(this._dio);

  final SaavnDio _dio;
}

@riverpod
SongRepository songRepository(SongRepositoryRef ref) {
  return SongRepositoryImpl(ref.read(saavnDioProvider));
}
```
