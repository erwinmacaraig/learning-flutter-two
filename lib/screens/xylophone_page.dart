import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatelessWidget {
  final player = AudioPlayer();

  Widget buildContainer({required Color color, required int soundNumber}) {
    return Container(
      color: color,
      width: double.infinity,
      child: TextButton(
        child: Text('$soundNumber'),
        onPressed: () async {
          await player.play(AssetSource('assets_note$soundNumber.wav'));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            buildContainer(color: Colors.red, soundNumber: 1),
            buildContainer(color: Colors.orange, soundNumber: 2),
            buildContainer(color: Colors.yellow, soundNumber: 3),
            buildContainer(color: Colors.teal, soundNumber: 4),
            buildContainer(color: Colors.green, soundNumber: 5),
            buildContainer(color: Colors.purple, soundNumber: 6),
          ],
        ),
      ),
    );
  }
}
