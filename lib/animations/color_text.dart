import 'package:flutter/material.dart';

class ColorTextAnimation extends StatefulWidget {
  const ColorTextAnimation({super.key});
  @override
  State<ColorTextAnimation> createState() => _ColorTextAnimationState();
}

class _ColorTextAnimationState extends State<ColorTextAnimation> {
  bool changeColor = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          changeColor = !changeColor;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 500),
        style: TextStyle(
          fontSize: 30,
          color: changeColor ? Colors.red : Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        child: const Text("Pemrograman Bergerak"),
      ),
    );
  }
}
