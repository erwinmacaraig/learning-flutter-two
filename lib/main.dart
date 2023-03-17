import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.only(left: 30.0),
            padding: EdgeInsets.all(20.0),
            child: const Text("Hello world"),
          ),
        ),
      ),
    );
  }
}
