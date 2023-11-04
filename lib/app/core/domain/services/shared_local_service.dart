import 'package:shared_preferences/shared_preferences.dart';

class SharedLocalService {
  SharedPreferences? _sharedPreferences;

  SharedLocalService();

  Future<void> _init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
  }

  Future<void> saveString(String key, String value) async {
    await _init();
    await _sharedPreferences?.setString(key, value);
  }

  Future<void> saveBool(String key, bool value) async {
    await _init();
    await _sharedPreferences?.setBool(key, value);
  }

  Future<void> saveInt(String key, int value) async {
    await _init();
    await _sharedPreferences?.setInt(key, value);
  }

  Future<void> saveDouble(String key, double value) async {
    await _init();
    await _sharedPreferences?.setDouble(key, value);
  }

  Future<void> saveStringList(String key, List<String> value) async {
    await _init();
    await _sharedPreferences?.setStringList(key, value);
  }

  Future<String?> getString(String key) async {
    await _init();
    return _sharedPreferences!.getString(key);
  }

  Future<bool?> getBool(String key) async {
    await _init();
    return _sharedPreferences!.getBool(key);
  }

  Future<int?> getInt(String key) async {
    await _init();
    return _sharedPreferences!.getInt(key);
  }

  Future<double?> getDouble(String key) async {
    await _init();
    return _sharedPreferences!.getDouble(key);
  }

  Future<List<String>> getStringList(String key) async {
    await _init();
    final response = _sharedPreferences!.getStringList(key);
    return response ?? [];
  }

  Future<void> remove(String key) async {
    await _init();
    await _sharedPreferences?.remove(key);
  }

  Future<void> clear() async {
    await _init();
    await _sharedPreferences?.clear();
  }
}
