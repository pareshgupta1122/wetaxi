import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesHelper{

  static Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();

  Future<void> setData(String key,String value) async {
    final prefs = await sharedPreferences;
    print('setting $key as $value.');
    prefs.setString(key, value);
  }

  Future<void> setBool(String key, bool value) async{
    final prefs = await sharedPreferences;
    print('setting $key as $value.');
    prefs.setBool(key, value);
  }

  Future<bool> getBool(String key) async {
    final prefs = await sharedPreferences;
    return prefs.getBool(key);
  }


  Future<String> getData(String key) async {
    final prefs = await sharedPreferences;
    return prefs.getString(key);
  }

  Future<void> setList(String key,List<String> value) async{
    final prefs = await sharedPreferences;
    print('setting $key list.');
    prefs.setStringList(key, value);
  }

  Future<List<String>> getList(String key) async{
    final prefs = await sharedPreferences;
    return prefs.getStringList(key);
  }

}