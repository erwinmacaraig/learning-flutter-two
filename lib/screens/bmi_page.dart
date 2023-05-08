import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class BMIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: InputPage(),
    );
  }
}
