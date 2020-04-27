import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override

  void playSound(int SoundNum){
    final player = AudioCache();
    player.play('assets/note$SoundNum.wav');
  }


  Expanded MusicKeys(Color colour,int note){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(note);
        },

        color: colour,
      ),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment:CrossAxisAlignment.stretch,
            children: <Widget>[
                MusicKeys(Colors.red, 1),
                MusicKeys(Colors.orange, 2),
                MusicKeys(Colors.yellow, 3),
                MusicKeys(Colors.green, 4),
                MusicKeys(Colors.teal, 5),
                MusicKeys(Colors.blue, 6),
                MusicKeys(Colors.purple, 7),
            ],

          ),
        ),
      ),
    );
  }
}
