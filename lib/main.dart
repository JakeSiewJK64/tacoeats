import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tacoeats/Utilities/RouteGenerator.dart';
import 'package:tacoeats/ui/shared/bottomNav.dart';

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
