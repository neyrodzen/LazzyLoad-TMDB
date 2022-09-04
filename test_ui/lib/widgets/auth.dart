// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, non_constant_identifier_names, duplicate_ignore
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Login to your account"))),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          const HeaderWidget(),
          Row(
            children: [
              Buttons(text: "Register", color: Colors.blue),
              Buttons(text: "Verify Email", color: Colors.blue),
            ],
          ),
          const SizedBox(height: 30),
          FormWidget(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const textstyle = TextStyle(
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          "The overflow property's behavior is affected by the softWrap argument. If the softWrap is true or null, the glyph causing overflow, and those that follow, will not be rendered. Otherwise, it will be shown with the given overflow option.",
          style: textstyle,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          "jbjjhvjhv hgkjhvkhvkjhv jhvjhvjhvjgc",
          style: textstyle,
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  final textstyle = const TextStyle(
    color: Colors.black,
    fontSize: 16.0,
  );

  final decorator = const InputDecoration(
    border: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 103, 134, 157))),
    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
  );

  final color = Colors.blue;
  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final loginController = TextEditingController(text: 'admin');
  final passController = TextEditingController(text: 'admin');
  String? errorText = ' ';

  // ignore: non_constant_identifier_names
  void _Auth() {
    if (loginController.text == "admin" && passController.text == "admin") {
      Navigator.of(context).pushNamed('/main_screen');
    } else {
      errorText = "Error auth";
    }
    setState(() {});
  }

  void _ResetPass() {
    print("reset password");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(errorText!),
          SizedBox(
            height: 20,
          )
        ],
        Text(
          "Username",
          style: widget.textstyle,
        ),
        const SizedBox(
          height: 2,
        ),
        TextField(
          decoration: widget.decorator,
          controller: loginController,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Password",
          style: widget.textstyle,
        ),
        TextField(
          decoration: widget.decorator,
          controller: passController,
        ),
        SizedBox(height: 20),
        Row(
          children: [
            ElevatedButton(
              onPressed: _Auth,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(widget.color)),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
                onPressed: _ResetPass,
                child: Text(
                  "Reset password",
                )),
          ],
        )
      ],
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;
  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        widget.text,
        //  style: TextStyle(color: Colors.white),
      ),
    );
  }
}
