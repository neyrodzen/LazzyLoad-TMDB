// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final controller = ScrollController(initialScrollOffset: 2000.0);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      print('$controller.offset');
    });
  }

  @override
  Widget build(BuildContext context) {
    final list = <Widget>[];
    for (int i = 0; i < 200; i++) {
      list.add(Text('$i'));
    }
    return SingleChildScrollView(
      controller: controller,
      // ignore: sized_box_for_whitespace
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: list,
        ),
      ),
    );
  }
}
