import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  String text = "I am login";

  Login();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        "I AM LOGIN",
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
