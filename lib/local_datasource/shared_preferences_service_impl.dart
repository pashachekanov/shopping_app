import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/local_datasource/shared_preferences_service.dart';

@Injectable(as: SharedPreferencesService)
class SharedPreferencesServiceImpl extends SharedPreferencesService {
  SharedPreferencesServiceImpl(this.sharedPreferences);
  final SharedPreferences sharedPreferences;

  @override
  String? getString(String key) => sharedPreferences.getString(key);

  @override
  void setString(String key, String value) {
    sharedPreferences.setString(key, value);
  }

  @override
  int? getInt(String key) => sharedPreferences.getInt(key);

  @override
  void setInt(String key, int value) {
    sharedPreferences.setInt(key, value);
  }

  @override
  Future<void> clear() async {
    await sharedPreferences.clear();
  }
}
