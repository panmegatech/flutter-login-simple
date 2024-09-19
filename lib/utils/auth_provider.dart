import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLogin = false;
  bool get isLogin => _isLogin;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Future<void> checkLogin() async {
    _isLoading = true;
    await Future.delayed(const Duration(milliseconds: 1800));
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _isLogin = sharedPreferences.getBool("loginStatus") ?? false;
    _isLoading = false;
    notifyListeners();
  }

  Future<void> login(
      {required String username, required String password}) async {
    if (username == "panda" && password == "1234") {
      print("login by AuthProvider complete. .");
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setBool("loginStatus", true);
      _isLogin = true;

      print("isLogin : $isLogin");

      notifyListeners();
    } else {
      print("login fail!");
    }
  }

  Future<void> logout() async {
    print("logout");
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("loginStatus", false);
    _isLogin = false;

    notifyListeners();
  }
}
