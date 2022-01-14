import 'package:flutter/material.dart';
import 'package:tacoeats/Utilities/RouteGenerator.dart';
import 'package:tacoeats/ui/shared/bottomNav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TacoEats",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavbar(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
