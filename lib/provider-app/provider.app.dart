import 'package:boilerplate/provider-app/providers/counter.provider.dart';
import 'package:boilerplate/provider-app/screens/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MaterialApp(
        title: 'Provider App',
        home: HomeScreen(),
      ),
    );
  }
}
