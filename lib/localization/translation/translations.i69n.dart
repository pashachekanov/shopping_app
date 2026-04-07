// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
// dart format off
import 'package:i69n/i69n.dart' as i69n;

String get _languageCode => 'en';
String get _localeName => 'en';

String _plural(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.plural(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _ordinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.ordinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _cardinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.cardinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);

class Translations implements i69n.I69nMessageBundle {
  const Translations();
  String get app => "App";
  String get app_title => "Fake Store";
  String get login => "Login";
  String get general_error_message =>
      "Sorry, something went wrong, please try again.";
  String get login_welcome => "Welcome back! Glad to see you, Again!";
  String home_welcome(String username) => "Welcome,$username";
  String get login_label_email => "Enter your username";
  String get login_label_password => "Enter your password";
  String get login_label_email_error => "Email error";
  String get login_label_password_error => "Error";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'app':
        return app;
      case 'app_title':
        return app_title;
      case 'login':
        return login;
      case 'general_error_message':
        return general_error_message;
      case 'login_welcome':
        return login_welcome;
      case 'home_welcome':
        return home_welcome;
      case 'login_label_email':
        return login_label_email;
      case 'login_label_password':
        return login_label_password;
      case 'login_label_email_error':
        return login_label_email_error;
      case 'login_label_password_error':
        return login_label_password_error;
      default:
        return key;
    }
  }
}
