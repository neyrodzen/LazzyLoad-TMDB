// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  void onPressed() {
    print("on press");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: ElevatedButton(
      onPressed: onPressed,
      child: Text("ghghg"),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.amber),
      ),
    )));
  }
}
