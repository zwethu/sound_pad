import 'package:flutter/material.dart';
import 'package:sound_pad/pad_screen.dart';
import 'package:sound_pad/style.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sound_Pad',// inspire from super pad
      theme: lightTheme,
      darkTheme: darkTheme,//default theme is dark
      themeMode: ThemeMode.dark,
      home: const PadScreen(),
    );
  }
}
