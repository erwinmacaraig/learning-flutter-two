import 'package:flutter/material.dart';
import './screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) {
          return Topics();
        },
        '/bmi_calc': (context) {
          return BMIPage();
        },
        '/dicee': (context) {
          return DicePage();
        }
      },
      // home: Topics(),
    );
  }
}
