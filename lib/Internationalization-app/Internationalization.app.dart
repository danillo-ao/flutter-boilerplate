import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'package:boilerplate/Internationalization-app/l10n/localizations/app_localizations.dart';
import 'package:boilerplate/Internationalization-app/providers/preferences.provider.dart';
import 'package:boilerplate/Internationalization-app/screens/home/home.screen.dart';

class InternationalizationAppBuilder extends StatelessWidget {
  const InternationalizationAppBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internationalization App',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: context.watch<PreferencesProvider>().locale,
      supportedLocales: [
        Locale('en'), // English
        Locale('pt'), // Portuguese
      ],
      home: const HomeScreen(),
    );
  }
}

class InternationalizationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PreferencesProvider()),
      ],
      child: InternationalizationAppBuilder(),
    );
  }
}
