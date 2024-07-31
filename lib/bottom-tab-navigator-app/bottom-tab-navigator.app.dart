import 'package:flutter/material.dart';

import 'package:boilerplate/bottom-tab-navigator-app/routes/go-router.dart';

class BottomTabNavigatorApp extends StatelessWidget {
  const BottomTabNavigatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.routerDelegate,
      routeInformationParser: appRouter.routeInformationParser,
      routeInformationProvider: appRouter.routeInformationProvider,
    );
  }
}
