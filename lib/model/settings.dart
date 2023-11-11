import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

// Class defining possible theme modes
class SettingsThemeMode {
  static const light = 'light';
  static const dark = 'dark';
  static const system = 'system';
  const SettingsThemeMode(); // A constant class to hold theme mode constants
}

// Function to convert a String theme mode to ThemeMode enum
ThemeMode getThemeMode(String themeMode) {
  if (themeMode == SettingsThemeMode.light) {
    return ThemeMode.light;
  } else if (themeMode == SettingsThemeMode.dark) {
    return ThemeMode.dark;
  } else {
    return ThemeMode.system;
  }
}

// Class defining the AppSettings model
class AppSettings {
  // Constructor with default values
  AppSettings({
    this.themeMode = SettingsThemeMode.system,
  });

  // Storage key for the settings
  static const key = 'settings_key';

  // Theme mode property
  String themeMode;

  // Factory constructor to create AppSettings from JSON
  factory AppSettings.fromJson(String str) =>
      AppSettings.fromMap(json.decode(str));

  // Factory constructor to create AppSettings from a map
  factory AppSettings.fromMap(Map<String, dynamic> json) {
    return AppSettings(
      themeMode: json['themeMode'] as String,
    );
  }

  // Convert AppSettings to JSON
  String toJson() => json.encode(toMap());

  // Convert AppSettings to a map
  Map<String, dynamic> toMap() {
    return {
      'themeMode': themeMode,
    };
  }
}

// Adapter class for Hive to work with AppSettings
class AppSettingsAdapter extends TypeAdapter<AppSettings> {
  // Unique identifier for this adapter
  @override
  int get typeId => 1;

  // Read method to deserialize AppSettings from binary
  @override
  AppSettings read(BinaryReader reader) {
    return AppSettings.fromJson(jsonDecode(reader.readString()));
  }

  // Write method to serialize AppSettings to binary
  @override
  void write(BinaryWriter writer, AppSettings obj) {
    writer.writeString(jsonEncode(obj));
  }
}
