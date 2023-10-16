

/*
import 'package:shared_preferences/shared_preferences.dart';

import '../interfaces/storage_service.dart';

class SharedPrefsService implements StorageService {
  static SharedPrefsService? _instance;
  static SharedPreferences? _prefs;

  static Future<SharedPrefsService> get instance async {
    _prefs ??= await SharedPreferences.getInstance();
    return _instance ??= SharedPrefsService();
  }

  @override
  bool has(String key) => _prefs!.containsKey(key);

  @override
  Future<bool> setInt(String key, int value) => _prefs!.setInt(key, value);

  @override
  Future<bool> setBool(String key, bool value) => _prefs!.setBool(key, value);

  @override
  Future<bool> setStringList(String key, List<String> value) =>
      _prefs!.setStringList(key, value);

  @override
  Future<bool> setString(String key, String value) =>
      _prefs!.setString(key, value);

  @override
  Future<bool> setDouble(String key, double value) =>
      _prefs!.setDouble(key, value);

  @override
  List<String>? getStringList(String key) => _prefs!.getStringList(key);

  @override
  String? getString(String key) => _prefs!.getString(key);

  @override
  double? getDouble(String key) => _prefs!.getDouble(key);

  @override
  bool? getBool(String key) => _prefs!.getBool(key);

  @override
  int? getInt(String key) => _prefs!.getInt(key);

  @override
  Future<bool> remove(String key) => _prefs!.remove(key);

  @override
  Future<bool> clear() => _prefs!.clear();
}
*/