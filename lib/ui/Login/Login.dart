import 'package:flutter/material.dart';
import 'package:tacoeats/ui/shared/customAppBar.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  final String text = "I am login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar()),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: const <Widget>[
                  Image(
                    image: AssetImage('assets/images/takodachi.jpg'),
                    height: 150,
                  ),
                  Text(
                    'TakoEats',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Delivering food with Speed',
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          height: 1.0,
                        ),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
