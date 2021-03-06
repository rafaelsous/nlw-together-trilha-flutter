import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/shared/models/user_model.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(UserModel? user, BuildContext context) {
    if (user != null) {
      saveUser(user);
      _user = user;

      Navigator.pushReplacementNamed(context, '/home');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString("user", user.toJson());

    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();

    await Future.delayed(const Duration(seconds: 2));

    if (instance.containsKey("user")) {
      final json = instance.get("user") as String;
      setUser(UserModel.fromJson(json), context);
    } else {
      setUser(null, context);
    }

    return;
  }
}
