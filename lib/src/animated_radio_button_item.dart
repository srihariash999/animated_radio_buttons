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

  /// label is the string displayed beside a radio button
  String get getLabel => label;

  /// color property used to set the color of individual radio button
  Color get getColor => color;

  /// filInColor property used to set the color inside the ring of a radio button
  Color get getFillInColor => fillInColor;

  /// labelTextStyle property defines the style of the label text
  TextStyle get getLabelTextStyle => labelTextStyle;
}
