import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static SharedPreferences? _sharedPrefs;

  factory Prefs() => Prefs._internal();

  Prefs._internal();

  Future<void> init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  setToken(String token) {
    _sharedPrefs?.setString('token', token);
  }

  setUserId(int id) {
    _sharedPrefs?.setInt('user_id', id);
  }

  deleteLocalStorage() {
    _sharedPrefs?.remove('token');
    _sharedPrefs?.remove('user_id');
  }

  get token => _sharedPrefs?.getString('token');

  get userId => _sharedPrefs?.getInt('user_id');
}
