import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String data;

  const SecondPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TacoEats")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Second Page', style: TextStyle(fontSize: 50)),
            Text(data, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
