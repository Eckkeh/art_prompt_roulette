import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ArtPromptRouletteApp());
}

class ArtPromptRouletteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Art Prompt Roulette',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
        fontFamily: 'Roboto',
      ),
      home: PromptHomePage(),
    );
  }
}

class PromptHomePage extends StatefulWidget {
  @override
  _PromptHomePageState createState() => _PromptHomePageState();
}

class _PromptHomePageState extends State<PromptHomePage> {
  final Random _random = Random();
  String _currentPrompt = 'Tap to get a prompt 🎲';

  final List<String> subjects = [
    'a jellyfish',
    'an abandoned mall',
    'a lonely fox',
    'a haunted mirror',
    'an astronaut in love',
    'a floating island',
    'a cyberpunk cityscape',
    'a mysterious forest',
    'a dragon sleeping on gold',
    'a vintage robot',
    'a steampunk airship',
    'a neon-lit alley',
    'a secret underwater city',
    'a giant clocktower',
    'an ancient ruin',
    'a futeristic samurai',
    'a talking tree',
    'a crystal cavern',
    'a forgotten spaceship',
    'a whimsical carnival',
  ];

  final List<String> styles = [
    'in pixel art style',
    'as a Renaissance painting',
    'as a tarot card',
    'with only two colors',
    'in the style of a cave painting',
    'like a comic book panel',
    'with neon lights',
    'in watercolor',
    'in surrealism style',
    'like a 1980s sci-fi poster',
    'as a stained glass window',
    'in a minimalist style',
    'like an impressionist painting',
    'in black and white',
    'as a vintage poster',
    'like a graffiti mural',
    'in glitch art style',
    'as a pop art piece',
    'in a pastel palette',
    'like a fantasy illustration',
  ];

  final List<String> moods = [
    'melancholy',
    'chaotic',
    'serene',
    'dreadful',
    'surreal',
    'joyful',
    'mysterious',
    'dreamy',
    'angry',
    'peaceful',
    'nostaligic',
    'whimsical',
    'tense',
    'hopeful',
    'eerie',
    'playful',
    'solemn',
    'enigmatic',
    'wistful',
    'melodramatic',
  ];

  void _generatePrompt() {
    final subject = subjects[_random.nextInt(subjects.length)];
    final style = styles[_random.nextInt(styles.length)];
    final mood = moods[_random.nextInt(moods.length)];

    setState(() {
      _currentPrompt = 'Draw $subject, $style, feeling $mood.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _currentPrompt,
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: _generatePrompt,
                icon: Icon(Icons.refresh),
                label: Text('New Prompt'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
