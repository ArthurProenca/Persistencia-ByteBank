import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('images/bytebank_logo.png'),
            Container(
                color: Colors.green,
                child: Column(children: <Widget>[
                  Icon(Icons.people),
                  Text('Contacts'),
                ])),
          ],
        ),
      ),
    );
  }
}