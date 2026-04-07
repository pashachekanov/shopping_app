import 'package:flutter/material.dart';
import 'package:shopping_app/localization/translation/translations.i69n.dart';

const _supportedLocales = ['en'];

class ShoppingAppLocalization {
  const ShoppingAppLocalization(this.translations);

  final Translations translations;

  static final _translations = <String, Translations Function()>{
    'en': () => const Translations(),
  };

  static const LocalizationsDelegate<ShoppingAppLocalization> delegate =
      _LocalizationsDelegate();

  static final List<Locale> supportedLocales = _supportedLocales
      .map(Locale.new)
      .toList();

  static Future<ShoppingAppLocalization> load(Locale locale) => Future.value(
    ShoppingAppLocalization(_translations[locale.languageCode]!()),
  );

  static Translations of(BuildContext context) =>
      Localizations.of<ShoppingAppLocalization>(
        context,
        ShoppingAppLocalization,
      )!.translations;
}

class _LocalizationsDelegate
    extends LocalizationsDelegate<ShoppingAppLocalization> {
  const _LocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _supportedLocales.contains(locale.languageCode);

  @override
  Future<ShoppingAppLocalization> load(Locale locale) =>
      ShoppingAppLocalization.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<ShoppingAppLocalization> old) =>
      false;
}
