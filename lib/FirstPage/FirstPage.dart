import 'package:flutter/material.dart';
import '../SecondPage/SecondPage.dart';

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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => (SecondPage(data: 'text'))),
                      ),
                    },
                child: const Text('Go to Second')),
          ],
        ),
      ),
    );
  }
}
