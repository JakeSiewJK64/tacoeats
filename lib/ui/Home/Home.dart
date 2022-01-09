import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String text;

  Home(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 28),
    );
  }
}
