import 'package:flutter/material.dart';
// ignore: unused_import
import 'menu_widget.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Settings",
            ),
          ),
        ),
        // ignore: sized_box_for_whitespace
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: const [
              _UserInfo(),
              SizedBox(height: 30),
              MenuWidget(),
              SizedBox(height: 30),
              MenuWidget2(),
            ],
          ),
        ));
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({
    Key? key,
  }) : super(key: key);

  // ignore: non_constant_identifier_names
  final StyleT = const TextStyle(
    backgroundColor: Colors.amber,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    // letterSpacing: 20,
    height: 1.2,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 10),
          const _AvatarWidget(),
          const SizedBox(height: 10),
          Text(
            "Aleksandr Kononov",
            style: StyleT,
          ),
          const SizedBox(height: 10),
          const Text("+7/(987/)3400000"),
          const SizedBox(height: 10),
          Text(
            "@Aleksandr_",
            style: StyleT,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}
