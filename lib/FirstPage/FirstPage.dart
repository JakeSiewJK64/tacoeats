import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TacoEats'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'First Page',
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: () => {
                      Navigator.of(context)
                          .pushNamed('/second', arguments: 'hello from first'),
                    },
                child: const Text('Go to Second')),
          ],
        ),
      ),
    );
  }
}
