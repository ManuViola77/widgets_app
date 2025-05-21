import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.deepPurpleAccent,
  Colors.teal,
  Colors.blue,
  Colors.pink,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0,
        'Selected color must be greater than or equal to 0',
      ),
      assert(
        selectedColor < colorList.length,
        'Selected color must be less than ${colorList.length}',
      );

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
    );
  }
}
