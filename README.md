# xbcodebase

A new Flutter codebase is coming.

## Core dependencies

- [Riverpod](https://riverpod.dev/docs/getting_started): State management library
- [Hooks](https://pub.dev/packages/flutter_hooks): Less code, more compicated 🥲🥲
- [Dio](https://pub.dev/packages/dio): For communicating with APIs
- And more,...  check out the `pubspec.yaml` file

## How to start a new project from this codebase?

- Change the application id:
  - Android: Change the package name
  - iOS: Change the bundle id:
    1. Create AppID on Apple Developer Portal.
    2. Create profiles, certificates for each build type (recommend using `Fastlane match`)
- Set up Firebase (optional): [Add Firebase to your Flutter app](https://firebase.google.com/docs/flutter/setup?platform=ios)

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

## Flutter Flavorizr

- Check out [reference](https://pub.dev/packages/flutter_flavorizr)
- Add flutter_flavorizr dependency.
- Create your flavors config at the end of `pubspec.yaml` file. Example:

```yaml
flavorizr:
  flavors:
    dev:
      app:
        name: "Wherever Dev"
      android:
        applicationId: "asia.executionlab.wherever_dev"
      ios:
        bundleId: "asia.executionlab.wherever-dev"
        firebase:
          config: ".firebase/dev/GoogleService-Info.plist"

    stg:
      app:
        name: "Wherever Stg"
      android:
        applicationId: "asia.executionlab.wherever_stg"
      ios:
        bundleId: "asia.executionlab.wherever-stg"
        firebase:
          config: ".firebase/stg/GoogleService-Info.plist"

    prod:
      app:
        name: "Wherever"
      android:
        applicationId: "asia.executionlab.wherever_prod"
      ios:
        bundleId: "asia.executionlab.wherever-prod"
        firebase:
          config: ".firebase/prod/GoogleService-Info.plist"
    
```

- Run flutter_flavorizr:

```bash
flutter pub run flutter_flavorizr
```

- Add newly created flavors to Podfile. Example:

```ruby
project 'Runner', {
  'Debug-dev' => :debug,
  'Profile-dev' => :release,
  'Release-dev' => :release,
  'Debug-stg' => :debug,
  'Profile-stg' => :release,
  'Release-stg' => :release,
  'Debug-prod' => :debug,
  'Profile-prod' => :release,
  'Release-prod' => :release,
}
```

- Delete 2 files: `Podfile.lock`, `Runner.xcworkspace` and folder `Pods`
- Clean Pod cache:

```bash
pod cache clean --all
pod deintegrate
pod setup
pod install
```

> Note using `arch x86-64 pod install` if you are using Apple Silicon chip.

## References

- [Flutter Riverpod 2.0: The Ultimate Guide](https://codewithandrea.com/articles/flutter-state-management-riverpod/)
- [Riverpod Data Caching and Providers Lifecycle: Full Guide](https://codewithandrea.com/articles/flutter-riverpod-data-caching-providers-lifecycle/)
- [Internationalizing Flutter apps](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)

## Author

If you have any problems please contact @xuanbach  

[![E-Mail](https://img.shields.io/badge/email-vobach1997ts@gmail.com-blue.svg)](mailto:vobach1997ts@gmail.com)
