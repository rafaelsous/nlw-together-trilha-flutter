import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '/shared/models/user_model.dart';
import '/shared/auth/AuthController.dart';

class LoginController {
  final authController = AuthController();

  Future<void> googleSignin(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      final response = await _googleSignIn.signIn();
      final user =
          UserModel(name: response!.displayName!, photoURL: response.photoUrl);

      authController.setUser(user, context);
      print(response);
    } catch (error) {
      authController.setUser(null, context);
      print(error);
    }
  }
}
