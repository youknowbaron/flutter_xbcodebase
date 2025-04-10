import 'package:memorise_vocabulary/bridges.dart';

class InputValidator {
  InputValidator._();

  static String? validRequiredField(String value, String fieldName) {
    if (value.trim().isEmpty) {
      return $strings.pleaseEnter(fieldName);
    }
    return null;
  }

  static bool isValidEmail(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  static String? validEmail(String value) {
    if (value.isEmpty) {
      return $strings.pleaseEnter($strings.emailAddress);
    }
    if (!isValidEmail(value)) {
      return $strings.incorrectInputFormat($strings.emailAddress);
    }
    return null;
  }

  static String? validPassword(String value) {
    if (value.isEmpty) {
      return $strings.pleaseEnter($strings.password);
    }
    if (value.length < 8) {
      return $strings.passwordNotEnoughLength(8);
    }
    return null;
  }
}
