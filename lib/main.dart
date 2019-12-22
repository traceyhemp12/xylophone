import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
 
 void playSound(int noteNumber) {
  final player = AudioCache();
  player.play('note$noteNumber.wav');
  }  
 
  Expanded buildXylophoneKey({Color color ,int noteNumber})
 {
    return Expanded(
              child: FlatButton(
               color: color,
               onPressed: () { 
                final player = AudioCache();
                player.play('note$noteNumber.wav');
               }),
              );
 }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //build key color and pitch
              //todo add new sounds
            buildXylophoneKey(color: Colors.red, noteNumber: 1),
            buildXylophoneKey(color: Colors.deepOrange, noteNumber: 2), 
            buildXylophoneKey(color: Colors.yellow, noteNumber: 3),  
            buildXylophoneKey(color: Colors.green, noteNumber: 4),
            buildXylophoneKey(color: Colors.blue[800], noteNumber: 5),
            buildXylophoneKey(color: Colors.indigoAccent, noteNumber: 6),
            buildXylophoneKey(color: Colors.deepPurple, noteNumber: 7),

            ],
          ),
          ),
      )
    );
  }
}
