import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:boilerplate/Internationalization-app/l10n/localizations/app_localizations.dart';
import 'package:boilerplate/Internationalization-app/providers/preferences.provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void changeLocation(BuildContext context, String lang) {
    Provider.of<PreferencesProvider>(context, listen: false)
        .setLocale(Locale(lang));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Internationalization")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(AppLocalizations.of(context)!.helloWorld),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              changeLocation(context, 'pt');
            },
            child: Text(AppLocalizations.of(context)!.defineLangAsPT),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              changeLocation(context, 'en');
            },
            child: Text(AppLocalizations.of(context)!.defineLangAsEN),
          )
        ],
      ),
    );
  }
}
