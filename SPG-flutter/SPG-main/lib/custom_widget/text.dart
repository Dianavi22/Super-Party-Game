import 'package:flutter/material.dart';

class TextSPG extends StatelessWidget {
  static const double sizeTitle = 40.0;
  static const double sizeSubTitle = 30.0;
  static const double defaultSize = 22.0;
  static const double sizeShy = 15.0;

  final String text;
  final double fontSize;
  final Color color;

  const TextSPG({
    super.key,
    required this.text,
    this.fontSize = TextSPG.defaultSize,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'PressStart',
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
