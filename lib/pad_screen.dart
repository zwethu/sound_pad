import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sound_pad/touch_screen.dart';

class PadScreen extends StatefulWidget {
  const PadScreen({Key? key}) : super(key: key);

  @override
  _PadScreenState createState() => _PadScreenState();
}

class _PadScreenState extends State<PadScreen> {
  static const Color padColor = Color(0xff00FF5B);
  static const Color tapColor = Color(0xff0014FF);
  bool changeColor = false;

  @override
  void initState() {
    super.initState();
    changeColor = false;
  }

  void playSound(String input) {
    final player = AudioCache();
    player.play('sounds/$input.wav');
    setState(() {
      changeColor ? changeColor = false : changeColor = true;
      Timer(const Duration(milliseconds: 400), () {
        setState(() {
          changeColor ? changeColor = false : changeColor = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: const Text('Sound Pad'),
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TouchScreen(
                      onTap: () {
                        setState(() {
                          playSound('do');
                        });
                      },
                      colour: changeColor ? padColor : tapColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    TouchScreen(
                      onTap: () {
                        playSound('re');
                      },
                      colour: changeColor ? padColor : tapColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    TouchScreen(
                      onTap: () {
                        playSound('mi');
                      },
                      colour: changeColor ? padColor : tapColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TouchScreen(
                      onTap: () {
                        playSound('fa');
                      },
                      colour: changeColor ? padColor : tapColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    TouchScreen(
                      onTap: () {
                        playSound('sol');
                      },
                      colour: changeColor ? padColor : tapColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    TouchScreen(
                      onTap: () {
                        playSound('la');
                      },
                      colour: changeColor ? padColor : tapColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TouchScreen(
                      onTap: () {
                        playSound('ti');
                      },
                      colour: changeColor ? padColor : tapColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    TouchScreen(
                      onTap: () {
                        playSound('re');
                      },
                      colour: changeColor ? padColor : tapColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    TouchScreen(
                      onTap: () {
                        playSound('do');
                      },
                      colour: changeColor ? padColor : tapColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
