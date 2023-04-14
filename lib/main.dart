import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DrumPage(),
    );
  }
}

class DrumPage extends StatefulWidget {
  const DrumPage({Key? key}) : super(key: key);

  @override
  State<DrumPage> createState() => _DrumPageState();
}

class _DrumPageState extends State<DrumPage> {
  final oynatici = AudioPlayer();

  void sesiOynat(String soundName) {
    var ses = AssetSource('$soundName.wav');
    oynatici.play(ses);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                buildDrumButton('bip', Colors.blueAccent),
                buildDrumButton('bongo', Colors.red),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildDrumButton('clap2', Colors.white),
                buildDrumButton('crash', Colors.yellow),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildDrumButton('how', Colors.green),
                buildDrumButton('oobah', Colors.pink),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildDrumButton('ridebel', Colors.grey),
                buildDrumButton('woo', Colors.orange),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDrumButton(String soundName, Color renk) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          sesiOynat(soundName);
        },
        child: Container(
          decoration: BoxDecoration(
            color: renk,
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
      ),
    );
  }
}
