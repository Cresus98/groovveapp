//import 'package:get_it/get_it.dart';

abstract class StorageService {
  Future<bool> setStringList(String key, List<String> value);
  Future<bool> setString(String key, String value);
  Future<bool> setDouble(String key, double value);
  Future<bool> setBool(String key, bool value);
  Future<bool> setInt(String key, int value);

  List<String>? getStringList(String key);
  String? getString(String key);
  double? getDouble(String key);
  bool? getBool(String key);
  int? getInt(String key);

  Future<bool> remove(String key);
  Future<bool> clear();

  bool has(String key);
}


//StorageService get storage => GetIt.I();
