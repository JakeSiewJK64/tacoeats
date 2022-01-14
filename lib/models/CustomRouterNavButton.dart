import 'dart:html';

import 'package:flutter/material.dart';

class CustomRouterNavButton {
  String? url;
  BottomNavigationBarItem? item;

  CustomRouterNavButton(BottomNavigationBarItem item, String url) {
    url = url;
    item = item;
  }
}
