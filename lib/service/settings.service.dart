import 'package:can_move_common_utils/model/settings.dart';
import 'package:hive/hive.dart';

/// Settings service for managing application settings
class SettingsService {
  SettingsService._();

  /// Storage key for the settings box
  static const String key = 'settings_box';

  /// Storage box for AppSettings
  static late Box<AppSettings> box;

  /// Initialize the storage box
  static Future<void> init() async {
    // Open or create the Hive box for AppSettings
    box = await Hive.openBox<AppSettings>(key);
    return;
  }

  /// Save the provided settings to the storage box
  static Future<void> save(AppSettings settings) {
    return box.put(AppSettings.key, settings);
  }

  /// Read and retrieve the saved settings from the storage box
  static AppSettings read() {
    // Ensure that the box is initialized
    final AppSettings? settings = box.get(AppSettings.key);
    if (settings != null) {
      return settings;
    } else {
      // Return default settings if none are found
      return AppSettings();
    }
  }

  /// Reset the settings to default values
  static Future<AppSettings> reset() async {
    // Set all AppSettings to default values
    final AppSettings emptySettings = AppSettings();
    await box.put(AppSettings.key, emptySettings);
    return emptySettings;
  }
}
