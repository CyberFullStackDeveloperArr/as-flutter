import 'package:flutter/material.dart';

class FadeText extends StatefulWidget {
  const FadeText({super.key});
  @override
  State<FadeText> createState() => _FadeTextState();
}

class _FadeTextState extends State<FadeText> {
  bool visible = true;
  @override
  void initState() {
    super.initState();
    _loop();
  }

  void _loop() async {
    while (mounted) {
      await Future.delayed(const Duration(seconds: 1));
      setState(() => visible = !visible);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: visible ? 1 : 0, // ternary operator #
      duration: const Duration(seconds: 1),
      child: const Text(
        "Pemrograman Bergerak",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
