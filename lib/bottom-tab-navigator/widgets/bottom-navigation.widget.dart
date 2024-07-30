import 'package:boilerplate/bottom-tab-navigator/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({ super.key });

  int getCurrentIndex (BuildContext context) {
    final String uri = GoRouter.of(context).routeInformationProvider.value.uri.toString();

    switch(uri) {
      case Routes.SETTINGS:
        return 1;
      case Routes.INFOS:
        return 2;
      case Routes.HOME:
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: getCurrentIndex(context),
        onTap: (index) {
          if (index == 0){
            context.go(Routes.HOME);
          }
          if (index == 1){
            context.go(Routes.SETTINGS);
          }
          if (index == 2){
            context.go(Routes.INFOS);
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
        ]
    );
  }
}