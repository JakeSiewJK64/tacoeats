import 'package:flutter/material.dart';
import 'package:tacoeats/ui/FirstPage/FirstPage.dart';
import 'package:tacoeats/ui/Login/Login.dart';
import 'package:tacoeats/ui/SecondPage/SecondPage.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavbar();
}

class _BottomNavbar extends State<BottomNavbar> {
  int selectedIndex = 0;
  List<Widget> widgetOptions = <Widget>[
    const FirstPage(),
    const SecondPage(data: 'welcome'),
    const Login(),
  ];

  final List<BottomNavigationBarItem> allDestination =
      <BottomNavigationBarItem>[
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.food_bank_sharp), label: 'Orders'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle), label: 'Profile'),
  ];

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 15,
          unselectedFontSize: 10,
          iconSize: 20,
          items: allDestination,
          onTap: onTap,
          currentIndex: selectedIndex),
    );
  }
}
