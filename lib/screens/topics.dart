import 'package:flutter/material.dart';
import '../constants.dart';

class Topics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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
            onPressed: () {},
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
              style: kLabelTextStyle,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dicee');
            },
            child: const Text(
              'Roll Dice',
              style: kLabelTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
// DicePage