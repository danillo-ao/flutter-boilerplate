// Flutter imports:
import 'package:flutter/material.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({ super.key });

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Infos Screen"),
      ),
      body: const Center(
        child: Text("Infos screen body"),
      ),
    );
  }
}
