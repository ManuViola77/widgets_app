import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.deepPurpleAccent,
  Colors.teal,
  Colors.blue,
  Colors.pink,
  Colors.green,
  Colors.orange,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = true})
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
      appBarTheme: const AppBarTheme(centerTitle: true),
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    );
  }

  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkMode ?? this.isDarkMode,
  );
}
