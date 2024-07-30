import 'package:boilerplate/bottom-tab-navigator/routes/go-router.dart';
import 'package:flutter/material.dart';

class BottomTabNavigatorApp extends StatelessWidget {
  const BottomTabNavigatorApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.routerDelegate,
      routeInformationParser: appRouter.routeInformationParser,
      routeInformationProvider: appRouter.routeInformationProvider,
    );
  }
}