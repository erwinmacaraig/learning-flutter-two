import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () async {
              final player = AudioPlayer();
              // await player.setSource(
              //   AssetSource('assets_note1.wav'),
              // );
              await player.play(AssetSource('assets_note1.wav'));
              // await player.play(
              //   DeviceFileSource('assets_note1.wav'),
              // );
            },
            child: Text('Click Here!'),
          ),
        ),
      ),
    );
  }
}
