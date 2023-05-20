import 'package:flutter/material.dart';
import '../constants.dart';

class Topics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Topics',
          style: kTitleTextStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/todoeey');
            },
            child: const Text(
              'To Do App (State Management)',
              style: kLargeButtonTextStyle,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/clima');
            },
            child: const Text(
              'Clima - Live Web Data',
              style: kLargeButtonTextStyle,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bmi_calc');
            },
            child: const Text(
              'BMI Calculator',
              style: kLargeButtonTextStyle,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dicee');
            },
            child: const Text(
              'Roll Dice',
              style: kLargeButtonTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
// DicePage