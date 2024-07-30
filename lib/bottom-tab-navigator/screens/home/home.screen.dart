import 'package:boilerplate/bottom-tab-navigator/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ super.key });

  void navigate(BuildContext context) {
    context.go(Routes.DETAILS);
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
          ElevatedButton(onPressed: (){ navigate(context); }, child: const Text("DETAILS!"))
        ]
      )
    );
  }
}