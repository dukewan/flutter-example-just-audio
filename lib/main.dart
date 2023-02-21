import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Audio Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Just Audio Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await player.setAudioSource(AudioSource.asset('assets/piano.mp3'));
    player.play();
  }

  void seekPrev() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.skip_previous_rounded,
                  ),
                  iconSize: 40,
                  onPressed: seekPrev,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                  ),
                  iconSize: 80,
                  onPressed: seekPrev,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.skip_next_rounded,
                  ),
                  iconSize: 40,
                  onPressed: seekPrev,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.repeat,
                  ),
                  iconSize: 40,
                  onPressed: seekPrev,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Playing:  '),
                Text(
                  'Piano',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
