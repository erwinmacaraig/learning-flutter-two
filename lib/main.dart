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
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 100.0,
                width: 100.0,
                child: const Text("Container 1"),
              ),
              Container(
                color: Colors.lightBlue,
                height: 100.0,
                width: 100.0,
                child: const Text("Container 2"),
              ),
              Container(
                color: Colors.red,
                height: 100.0,
                width: 100.0,
                child: const Text("Container 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
