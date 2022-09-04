// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:help/widgets/auth.dart';
import 'package:help/widgets/navigator/main_screen_widget.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: MyColors.darkBlue,
        ),
      ),
      routes: {
        '/': (context) => Auth(),
        '/main_screen': (context) => MainScreen(),
      },
      initialRoute: '/',
    ),
  );
}
