import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Audio_Player()); //Everytime the App starts the aodio** class will be called

class Audio_Player extends StatelessWidget {
  const Audio_Player({super.key});

  @override
  Widget build(BuildContext context) {
    void Play_Sound(int i) {
      final audio = AudioPlayer();
      audio.play(AssetSource('note$i.wav'));
    }

    Expanded build_Key(Color color, int i) {
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            enableFeedback: false,
          ),
          onPressed: () {
            Play_Sound(i);
          },
          child: Text(''),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              build_Key(Colors.yellow, 6),
              build_Key(Colors.brown, 2),
              build_Key(Colors.blue, 1),
              build_Key(Colors.grey, 5),
              build_Key(Colors.orange, 7),
              build_Key(Colors.red, 3),
              build_Key(Colors.green, 4),
            ],
          ),
        ),
      ),
    );
  }
}
