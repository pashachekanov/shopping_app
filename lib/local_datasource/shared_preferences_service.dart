abstract class SharedPreferencesService {
  void setString(String key, String value);
  String? getString(String key);
  void setInt(String key, int value);
  int? getInt(String key);
  Future<void> clear();
}
