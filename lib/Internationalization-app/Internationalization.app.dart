import 'package:flutter/material.dart';

import 'package:boilerplate/Internationalization-app/screens/home/home.screen.dart';

class InternationalizationApp extends StatelessWidget {
  const InternationalizationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internationalization App',
      home: const HomeScreen(),
    );
  }
}
