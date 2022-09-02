import 'package:flutter/material.dart';

import 'widgets/auth.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(
        body: Auth(),
      ),
    ),
  );
}
