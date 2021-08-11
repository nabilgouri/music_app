import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Expanded buildKey(int num, MaterialColor color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.blue,
          backgroundColor: color,
        ),
        onPressed: () {
          play(num);
        },
      ),
    );
  }

  void play(int num) {
    // or as a local variable
    final player = AudioCache();

    // call this method when desired
    player.play('note$num.wav');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.blue),
                buildKey(2, Colors.green),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.orange),
                buildKey(5, Colors.red),
                buildKey(6, Colors.purple),
                buildKey(7, Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
