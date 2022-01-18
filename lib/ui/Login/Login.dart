import 'dart:convert';

import 'package:tacoeats/ui/shared/customAppBar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";

  Future<http.Response> validateAndSave() {
    return http.post(
      Uri.parse(dotenv.get('ENDPOINT')),
      headers: <String, String>{'Content-type': 'application/json'},
      body: jsonEncode(
        <String, String>{'username': email, 'password': password},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar()),
      body: Center(
        child: Form(
          key: _formKey,
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
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        onChanged: (_email) => email = _email,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        validator: (_value) {
                          if (_value == null || _value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        onChanged: (_password) =>
                            password = _password.toString(),
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: OutlinedButton(
                        onPressed: () {
                          validateAndSave();
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Column(
                                  children: [
                                    Text(email),
                                    Text(password),
                                  ],
                                ),
                              );
                            },
                          );
                        },
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
