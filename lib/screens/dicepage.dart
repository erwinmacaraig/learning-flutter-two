import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1, //for learning
            child: Image.asset('images/dice1.png'),
          ),
          Expanded(
            flex: 1,
            child: Image(
              image: AssetImage(
                  'images/dice2.png'), // purposely left this behind for learning and comparison with the Image Provider
            ),
          ),
        ],
      ),
    );
  }
}
