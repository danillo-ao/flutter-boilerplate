import 'package:boilerplate/bottom-tab-navigator/widgets/bottom-navigation.widget.dart';
import 'package:flutter/material.dart';

class ScaffoldApp extends StatelessWidget {
  const ScaffoldApp({ super.key, required this.child });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: BottomNavigation()
    );
  }
}