import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/res/constants/route_names.dart';

class LoginState extends ChangeNotifier {
  final SharedPreferences preferences;
  bool _loggedIn = false;

  LoginState(this.preferences) {
    loggedIn = preferences.getBool(loggedInKey) ?? false;
  }

  bool get loggedIn => _loggedIn;
  set loggedIn(bool value) {
    _loggedIn = value;
    preferences.setBool(loggedInKey, value);
    notifyListeners();
  }

  void checkLoggedIn() {
    loggedIn = preferences.getBool(loggedInKey) ?? false;
  }
}
