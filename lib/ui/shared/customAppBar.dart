import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.appBar}) : super(key: key);
  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('TakoEats'), actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(children: const <Widget>[
          Icon(Icons.login),
        ]),
      )
    ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
