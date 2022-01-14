import 'dart:developer';

import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavbar();
}

class _BottomNavbar extends State<BottomNavbar>
    with TickerProviderStateMixin<BottomNavbar> {
  int selectedIndex = 0;

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

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/second', arguments: 'welcome');
        break;
      case 2:
        Navigator.pushNamed(context, '/second');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedFontSize: 15,
        unselectedFontSize: 10,
        iconSize: 20,
        items: allDestination,
        onTap: onTap,
        currentIndex: selectedIndex);
  }
}
