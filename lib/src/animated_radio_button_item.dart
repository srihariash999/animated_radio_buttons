import 'package:flutter/material.dart';

class AnimatedRadioButtonItem {
  final String label;
  final Color color;
  final fillInColor;
  final TextStyle labelTextStyle;

  AnimatedRadioButtonItem({
    @required this.label,
    this.color,
    this.fillInColor,
    this.labelTextStyle,
  });

  String get getLabel => label;
  Color get getColor => color;
  Color get getFillInColor => fillInColor;
  TextStyle get getLabelTextStyle => labelTextStyle;
}
