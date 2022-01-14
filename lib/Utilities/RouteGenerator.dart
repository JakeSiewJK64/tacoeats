import 'package:flutter/material.dart';
import 'package:tacoeats/ui/FirstPage/FirstPage.dart';
import 'package:tacoeats/ui/Profile/Profile.dart';
import 'package:tacoeats/ui/SecondPage/SecondPage.dart';
import 'package:tacoeats/ui/shared/bottomNav.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/second':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondPage(data: args));
        }
        return _errorRoute();
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[Text('Error')],
          ),
        ),
        bottomNavigationBar: const BottomNavbar(),
      );
    });
  }
}
