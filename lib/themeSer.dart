import 'package:flutter/material.dart';

class ThemeSer with ChangeNotifier {
  bool _dark = true;

  bool get darkTheme => _dark;

  set setDarkTheme(bool value) {
    _dark = value;
    notifyListeners();
  }
}
