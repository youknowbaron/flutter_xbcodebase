enum AppBox {
  // ! - Don't change order of these enums
  settings,
}

enum SignInMethod { google, email }

class PKeys {
  PKeys._();
  static const themeMode = 'themeMode';
  static const locale = 'locale';
  static const signInMethod = 'signInMethod';
  static const userInfo = 'userInfo';
}

const kAppLocale = {
  'en': 'English',
  'vi': 'Tiếng Việt',
};
