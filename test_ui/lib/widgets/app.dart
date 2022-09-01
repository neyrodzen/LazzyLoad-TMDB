// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    const List<String> textData = ["1", "2", "3", "4", "5"];
    //  final List<Widget> textFields = [];

    final newTextData = textData
        .map((text) => TextWrapper(
              text: text,
              text2: text,
            ))
        .toList();

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: newTextData,
    ));
  }
}

class TextWrapper extends StatelessWidget {
  final String text;
  final String text2;

  const TextWrapper({required this.text, required this.text2, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        const Spacer(),
        Text(text2),
      ],
    );
  }
}
