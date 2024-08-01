import 'package:flutter/cupertino.dart';

class PreferencesProvider with ChangeNotifier {
  // Locale _locale = Locale(Platform.localeName);
  Locale _locale = Locale('pt');
  String _preferences = "preferences";

  Locale get locale => _locale;

  String get preferences => _preferences;

  void setLocale(Locale newLocale) {
    _locale = newLocale;
    notifyListeners();
  }
}
