import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class SettingsThemeMode {
  static const light = 'light';
  static const dark = 'dark';
  static const system = 'system';
  const SettingsThemeMode();
}

ThemeMode getThemeMode(String themeMode) {
  if (themeMode == SettingsThemeMode.light) {
    return ThemeMode.light;
  } else if (themeMode == SettingsThemeMode.dark) {
    return ThemeMode.dark;
  } else {
    return ThemeMode.system;
  }
}

class AppSettings {
  /// Constructor
  AppSettings({
    this.themeMode = SettingsThemeMode.system,
  });

  /// Storage key
  static const key = 'settings_key';

  String themeMode;

  factory AppSettings.fromJson(String str) =>
      AppSettings.fromMap(json.decode(str));

  factory AppSettings.fromMap(Map<String, dynamic> json) {
    return AppSettings(
      themeMode: json['themeMode'] as String,
    );
  }

  /// Converts Master Secret to Json
  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() {
    return {
      'themeMode': themeMode,
    };
  }
}

class AppSettingsAdapter extends TypeAdapter<AppSettings> {
  @override
  int get typeId => 1; // this is unique, no other Adapter can have the same id.

  @override
  AppSettings read(BinaryReader reader) {
    return AppSettings.fromJson(jsonDecode(reader.readString()));
  }

  @override
  void write(BinaryWriter writer, AppSettings obj) {
    writer.writeString(jsonEncode(obj));
  }
}
