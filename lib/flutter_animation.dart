import 'package:flutter/material.dart';
import 'animations/fade_text.dart';
import 'animations/color_text.dart';

class FlutterAnimationPage extends StatelessWidget {
  const FlutterAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: Center(
              child: SingleChildScrollView(
                  child: Column(
        children: [
          FadeText(),
          ColorTextAnimation(),
        ],
      )))),
    );
  }
}
