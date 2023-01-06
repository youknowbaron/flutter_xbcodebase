# xbcodebase

A new Flutter codebase is coming.

## Core dependencies

- [Riverpod](https://riverpod.dev/docs/getting_started): State management library
- [Hooks](https://pub.dev/packages/flutter_hooks): Less code, more compicated 🥲🥲
- [Dio](https://pub.dev/packages/dio): For communicating with APIs
- And more,...  check out the `pubspec.yaml` file

## App Localizations

Run command to generate the `AppLocalizations` file.

```bash
flutter gen-l10n
```

Manage string constants:  

- Put the string in the corresponding .arb file (e.g localization/app_en.arb).
- Use `$strings` to get the string at everywhere in the app.

## Riverpod Generator

- Use `@riverpod` to generate a auto dispose provider.
- Use `@Riverpod(keepAlive: true)` to generate a always keep alive provider.

### Example code

#### Generate a provider

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

## References

- [Flutter Riverpod 2.0: The Ultimate Guide](https://codewithandrea.com/articles/flutter-state-management-riverpod/)
- [Riverpod Data Caching and Providers Lifecycle: Full Guide](https://codewithandrea.com/articles/flutter-riverpod-data-caching-providers-lifecycle/)
- [Internationalizing Flutter apps](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)
