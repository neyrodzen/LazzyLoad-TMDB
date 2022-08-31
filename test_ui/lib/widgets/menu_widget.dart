// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(children: const [
        RowWidget(icon: Icons.favorite, text: "Favorite"),
        RowWidget(icon: Icons.call, text: "Calls"),
        RowWidget(icon: Icons.computer, text: "Devices"),
        RowWidget(icon: Icons.folder, text: "Folders"),
      ]),
    );
  }
}

class MenuWidget2 extends StatelessWidget {
  const MenuWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(children: const [
        RowWidget(icon: Icons.favorite, text: "Favorite"),
        RowWidget(icon: Icons.call, text: "Calls"),
        RowWidget(icon: Icons.computer, text: "Devices"),
        RowWidget(icon: Icons.folder, text: "Folders"),
      ]),
    );
  }
}

class RowWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const RowWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        ),
        Icon(icon),
        const SizedBox(width: 10),
        Expanded(child: Text(text)),
        const SizedBox(width: 10),
        const Icon(Icons.chevron_right_sharp),
      ],
    );
  }
}
