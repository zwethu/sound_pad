import 'package:flutter/material.dart';

class TouchScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const TouchScreen({required this.colour, required this.onTap});
  final Color colour;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.31,
        height: MediaQuery.of(context).size.width * 0.31,

        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          // gradient: const LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomRight,
          //   colors: [Color(0xff0014FF), Color(0xff00FF5B)],
          // ),
          color: colour,
        ),
      ),
    );
  }
}
