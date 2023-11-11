import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

// The MapThemeService class handles the retrieval of map themes based on brightness.
class MapThemeService {
  // This method returns the appropriate map theme based on the brightness setting.

  // Future<String> getTheme(Brightness brightness) async {
  // If the brightness is set to dark, load the dark map style from the assets.
  // Note: Caching is enabled for improved performance.
  Future<String> getTheme(Brightness brightness) async {
    if (brightness == Brightness.dark)
      return await rootBundle.loadString('assets/map_styles/dark.json',
          cache: true);
    // If the brightness is not dark, load the light map style from the assets.
    // Note: Caching is enabled for improved performance.
    else
      return await rootBundle.loadString('assets/map_styles/light.json',
          cache: true);
  }
}
