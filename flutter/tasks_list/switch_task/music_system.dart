import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MusicSystem extends StatefulWidget {
  const MusicSystem({super.key});

  @override
  State<MusicSystem> createState() => _MusicSystemState();
}

class _MusicSystemState extends State<MusicSystem> {
  final _player = AudioPlayer();
  bool _myvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music System"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              activeColor: Colors.red,
              activeTrackColor: Colors.orangeAccent,
              inactiveThumbColor: Colors.redAccent,
              inactiveTrackColor: Colors.orange,
              value: _myvalue,
              onChanged: (value) {
                setState(() {
                  if (_myvalue == true) {
                    _myvalue = false;
                    pauseAudio();
                  } else {
                    _myvalue = true;
                    playAudioFromUrl();
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> playAudioFromUrl() async {
    await _player.setUrl("https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3");
    _player.play();
  }

  Future<void> pauseAudio() async {
    await _player.setUrl("https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3");
    _player.pause();
  }
}


