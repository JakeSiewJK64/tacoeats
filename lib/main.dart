import 'package:flutter/material.dart';
import 'package:tacoeats/FirstPage/FirstPage.dart';
import 'package:tacoeats/Login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "TacoEats",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FirstPage());
  }
}
