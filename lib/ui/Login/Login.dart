import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  final String text = "I am login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text('Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
