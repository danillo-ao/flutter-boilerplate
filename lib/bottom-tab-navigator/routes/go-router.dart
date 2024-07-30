import 'package:boilerplate/bottom-tab-navigator/routes/routes.dart';
import 'package:boilerplate/bottom-tab-navigator/screens/details/details.screen.dart';
import 'package:boilerplate/bottom-tab-navigator/screens/home/home.screen.dart';
import 'package:boilerplate/bottom-tab-navigator/screens/infos/infos.screen.dart';
import 'package:boilerplate/bottom-tab-navigator/screens/settings/settings.screen.dart';
import 'package:boilerplate/bottom-tab-navigator/widgets/scaffold-app.widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  initialLocation: Routes.HOME,
  navigatorKey: _rootNavigatorKey,
  routes: <RouteBase>[
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          child: ScaffoldApp(child: child)
        );
      },
      routes: [
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: Routes.HOME,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: Routes.SETTINGS,
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: Routes.INFOS,
          builder: (context, state) => const InfosScreen(),
        ),
      ]
    ),

    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: Routes.DETAILS,
      builder: (context, state) => const DetailsScreen(),
    )
  ],
);
