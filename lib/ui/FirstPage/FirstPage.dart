import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage>
    with TickerProviderStateMixin<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
