import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DrumScreen extends StatelessWidget {
  const DrumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/drum.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: _getBody(),
        ),
      ),
    );
  }

  Widget _getBody() {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('h1.wav');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('h2.wav');
                  },
                  child: Text(''),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('k1.wav');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('k2.wav');
                  },
                  child: Text(''),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('c1.wav');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('c2.wav');
                  },
                  child: Text(''),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
