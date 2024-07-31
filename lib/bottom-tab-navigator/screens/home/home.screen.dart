// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:boilerplate/bottom-tab-navigator/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ super.key });

  void navigate(BuildContext context) {
    context.go('/home/details');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen")
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text("Home screen body")),
          ElevatedButton(onPressed: (){ navigate(context); }, child: const Text("DETAILS!")),
          ElevatedButton(onPressed: (){ context.go(Routes.DETAILS); }, child: const Text("DETAILS ROOT!"))
        ]
      )
    );
  }
}
