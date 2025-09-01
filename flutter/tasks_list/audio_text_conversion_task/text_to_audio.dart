import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToAudio extends StatefulWidget {
  const TextToAudio({super.key});

  @override
  State<TextToAudio> createState() => _TextToAudioState();
}

class _TextToAudioState extends State<TextToAudio> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text to Speech'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(labelText: 'Enter text'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _speak, child: Text('Speak')),
          ],
        ),
      ),
    );
  }

  _speak() async {
    String text = textController.text;
    if (text.isNotEmpty) {
      await flutterTts.speak(text);
    }
  }
}
