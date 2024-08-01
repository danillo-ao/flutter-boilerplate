import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get helloWorldTest => 'Hello World Test!';

  @override
  String get defineLangAsPT => 'Define language to pt-br';

  @override
  String get defineLangAsEN => 'Define language to en-us';
}
