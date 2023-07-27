import 'package:flutter/material.dart';

import 'config.dart';

class ThemeApp {
  static lightTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: Palette.primaryColor,
    );
  }
}
