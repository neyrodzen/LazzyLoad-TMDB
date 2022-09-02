// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Container(
        color: (index % 2 == 0 ? Colors.amber : Colors.blue),
        padding: const EdgeInsets.all(100),
      );
    });
  }
}
