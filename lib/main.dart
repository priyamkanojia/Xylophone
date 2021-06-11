import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({Color backgroundColor ,int soundNumber}){
    return Expanded(
      child: OutlinedButton(
        style : OutlinedButton.styleFrom(
          backgroundColor:backgroundColor,
          //side: BorderSide(color: Colors.black, width: 2.0) ,
        ),
        onPressed: (){
          play(soundNumber);
        },),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              buildKey(backgroundColor: Colors.red,soundNumber:1),
              buildKey(backgroundColor: Colors.orange,soundNumber:2),
              buildKey(backgroundColor: Colors.yellow,soundNumber:3),
              buildKey(backgroundColor: Colors.green,soundNumber:4),
              buildKey(backgroundColor: Colors.teal,soundNumber:5),
              buildKey(backgroundColor: Colors.blue,soundNumber:6),
              buildKey(backgroundColor: Colors.purple,soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}