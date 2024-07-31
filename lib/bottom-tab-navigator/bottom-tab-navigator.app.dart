// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:boilerplate/bottom-tab-navigator/routes/go-router.dart';

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
