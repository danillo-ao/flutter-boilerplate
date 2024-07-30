import 'package:boilerplate/bottom-tab-navigator/widgets/bottom-navigation.widget.dart';
import 'package:flutter/material.dart';

class ScaffoldApp extends StatelessWidget {
  ScaffoldApp({ super.key, required this.child });

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: const BottomNavigation()
    );
  }
}