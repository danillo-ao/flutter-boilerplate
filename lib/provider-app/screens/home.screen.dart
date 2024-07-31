import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:boilerplate/provider-app/providers/counter.provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final count = context.watch<Counter>().count.toString();

    return Scaffold(
      appBar: AppBar(title: Text("Context Screen")),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Count Value: $count")),
              //
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ElevatedButton(
                  child: Text("Increment"),
                  onPressed: () {
                    context.read<Counter>().increment();
                  },
                ),
              ),
              //
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ElevatedButton(
                  child: Text("Decrement"),
                  onPressed: () {
                    context.read<Counter>().decrement();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
