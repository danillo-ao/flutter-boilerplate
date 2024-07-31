import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:boilerplate/bottom-tab-navigator-app/routes/routes.dart';
import 'package:boilerplate/bottom-tab-navigator-app/screens/details/details.screen.dart';
import 'package:boilerplate/bottom-tab-navigator-app/screens/home/home.screen.dart';
import 'package:boilerplate/bottom-tab-navigator-app/screens/infos/infos.screen.dart';
import 'package:boilerplate/bottom-tab-navigator-app/screens/settings/settings.screen.dart';
import 'package:boilerplate/bottom-tab-navigator-app/widgets/scaffold-app.widget.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final _homeBranchKey = GlobalKey<NavigatorState>();
final _settingsBranchKey = GlobalKey<NavigatorState>();
final _infosBranchKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  initialLocation: Routes.HOME,
  navigatorKey: _rootNavigatorKey,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
        builder: (context, GoRouterState state, navigationShell) {
          return ScaffoldApp(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(navigatorKey: _homeBranchKey, routes: [
            GoRoute(
                path: Routes.HOME,
                builder: (context, state) => const HomeScreen(),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: 'details',
                    builder: (context, state) => const DetailsScreen(),
                  )
                ])
          ]),
          StatefulShellBranch(navigatorKey: _settingsBranchKey, routes: [
            GoRoute(
              path: Routes.SETTINGS,
              builder: (context, state) => const SettingsScreen(),
            ),
          ]),
          StatefulShellBranch(
            navigatorKey: _infosBranchKey,
            routes: [
              GoRoute(
                path: Routes.INFOS,
                builder: (context, state) => const InfosScreen(),
              ),
            ],
          )
        ]),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: Routes.DETAILS,
      builder: (context, state) => const DetailsScreen(),
    )
  ],
);
