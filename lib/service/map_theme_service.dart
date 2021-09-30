import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class MapThemeService {
  Future<String> getTheme(Brightness brightness) async {
    if (brightness == Brightness.dark)
      return await rootBundle.loadString('assets/map_styles/dark.json',
          cache: true);
    else
      return await rootBundle.loadString('assets/map_styles/light.json',
          cache: true);
  }
}
