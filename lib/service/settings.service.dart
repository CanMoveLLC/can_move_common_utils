import 'package:can_move_common_utils/model/settings.dart';
import 'package:hive/hive.dart';

/// Settings service
class SettingsService {
  SettingsService._();

  /// Storage key
  static const key = 'settings_box';

  /// Storage box
  static late Box<AppSettings> box;

  /// Initialize storage
  static Future<void> init() async {
    // await Hive.deleteBoxFromDisk(key);
    box = await Hive.openBox<AppSettings>(key);
  }

  /// Save asset_management_front settings
  static Future<void> save(AppSettings settings) async {
    await box.put(AppSettings.key, settings);
  }

  /// Read asset_management_front settings
  static AppSettings read() {
    // Make sure its initialized
    final settings = box.get(AppSettings.key);
    if (settings != null) {
      return settings;
    } else {
      return AppSettings();
    }
  }

  /// Reset settings
  static Future<AppSettings> reset() async {
    /// Will set all AppSettings to default
    final emptySettings = AppSettings();
    await box.put(AppSettings.key, emptySettings);
    return emptySettings;
  }
}
