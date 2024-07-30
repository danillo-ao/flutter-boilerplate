import 'package:boilerplate/bottom-tab-navigator/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ super.key });

  void navigate(BuildContext context) {
    context.go(Routes.HOME);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Screen")
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text("Details Screen")),
          ElevatedButton(onPressed: (){ navigate(context); }, child: const Text("GO BACK!"))
        ],
      ),
    );
  }
}