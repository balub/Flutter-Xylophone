import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                FlatButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note1.wav');
                  },
                ),
                FlatButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                ),
                FlatButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note3.wav');
                  },
                ),
                FlatButton(
                  color: Colors.yellowAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note4.wav');
                  },
                ),
                FlatButton(
                  color: Colors.orangeAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note5.wav');
                  },
                ),
                FlatButton(
                  color: Colors.pinkAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note6.wav');
                  },
                ),
                FlatButton(
                  color: Colors.indigoAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note7.wav');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
