import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.darkBlue,
        title: Text(
          "TMDB",
          textAlign: TextAlign.left,
        ),
      ),
      body: Center(
          child: Container(
        color: Colors.amber,
      )),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation), label: "Movie"),
        BottomNavigationBarItem(
            icon: Icon(Icons.local_movies_outlined), label: "Serials"),
      ]),
    );
  }
}

// ignore: camel_case_types
abstract class MyColors {
  static const Color darkBlue = Color.fromRGBO(3, 37, 65, 1);
}
