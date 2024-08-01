import 'app_localizations.dart';

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get helloWorld => 'Olá mundo!';

  @override
  String get helloWorldTest => 'Olá Mundo de Teste!';

  @override
  String get defineLangAsPT => 'Definir idioma para pt-br';

  @override
  String get defineLangAsEN => 'Definir idioma para en-us';
}
