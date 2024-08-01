import 'dart:io';

import 'package:flutter/cupertino.dart';

class PreferencesProvider with ChangeNotifier {
  Locale _locale = Locale(Platform.localeName);
  String _preferences = "preferences";

  Locale get locale => _locale;

  String get preferences => _preferences;

  void setLocale(Locale newLocale) {
    _locale = newLocale;
    notifyListeners();
  }
}
