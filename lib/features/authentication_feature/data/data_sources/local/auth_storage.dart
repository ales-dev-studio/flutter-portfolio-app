import 'package:shared_preferences/shared_preferences.dart';

class AuthStorage {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  /// Store server authentication jwt token
  Future<void> saveToken(final String token) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString('token', token);
  }

  /// Get server authentication jwt token from local storage
  Future<String?> getToken() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString('token');
  }

  ///  Clear jwt token when logout
  Future<bool> clearToken() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.remove('token');
  }
}
