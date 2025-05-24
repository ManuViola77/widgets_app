import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Un simple booleano
// final isDarkModeProvider = StateProvider<bool>((ref) => true);

// Lista de colores inmutables
final colorListProvider = Provider<List<Color>>((ref) => colorList);

// Un simple int
// final selectedIndexColorProvider = StateProvider<int>((ref) => 0);

// Con la creacion del themeNotifierProvider ya no preciso
// por separado los isDarkModeProvider y selectedIndexColorProvider

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
