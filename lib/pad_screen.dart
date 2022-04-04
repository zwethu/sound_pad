import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PadScreen extends StatefulWidget {
  const PadScreen({Key? key}) : super(key: key);

  @override
  _PadScreenState createState() => _PadScreenState();
}

class _PadScreenState extends State<PadScreen> {
  static const Color firstPadColor = Color(0xff202124);
  static const Color firstTapColor = Color(0xff0CBABA);
  static const Color secondPadColor = Color(0xff0014FF);
  static const Color secondTapColor = Color(0xff380036);
  int currentIndex = -1;
  List<String> music = ['do', 're', 'mi', 'fa', 'sol', 'la', 'ti', 're', 'do'];

  @override
  void initState() {
    super.initState();
  }

  void playSound(String input) {
    final player = AudioCache();
    player.play('sounds/$input.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Sound Pad'),
      ),
      body: SafeArea(
        child: Center(
          child: GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 9,
            itemBuilder: (BuildContext context, int index) {
              return TouchScreen(
                firstColor:
                    currentIndex == index ? firstTapColor : firstPadColor,
                secondColor:
                    currentIndex == index ? secondTapColor : secondPadColor,
                onTap: () {
                  setState(() {
                    currentIndex = index;
                    playSound(music[index].toString());
                    resetAnimation();
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Timer resetAnimation() {
    return Timer(const Duration(milliseconds: 400), () {
      setState(() {
        currentIndex = -1; // set cureentIndex to -1 to reset the animation
      });
    });
  }
}

class TouchScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const TouchScreen(
      {required this.firstColor,
      required this.secondColor,
      required this.onTap});
  final Color firstColor;
  final Color secondColor;
  final VoidCallback onTap;

  @override
  State<TouchScreen> createState() => _TouchScreenState();
}

class _TouchScreenState extends State<TouchScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              widget.firstColor,
              widget.secondColor,
            ],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}
