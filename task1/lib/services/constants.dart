import 'package:flutter/material.dart';

abstract class ColorConstants {
  static const Color white = Color(0xFFFFFFFF);

  static const Color black = Color(0xFF000000);
  static const Color darkBlack = Color(0xFF1E201D);
  static Color lightBlack = const Color(0xFF000000).withOpacity(0.2);

  static const Color grey = Color(0xFFD9D9D9);
  static const Color darkGrey = Color(0xFFA9A9A9);
  static const Color secondDarkGrey = Color(0xFF9C9494);
  static Color lightGrey = const Color(0xFFD9D9D9).withOpacity(0.5);

  static const Color purple = Color(0xFFBC0063);
}

abstract class ImageConstants {
  static const String facebookImage = 'assets/images/img_facebook_logo.png';
  static const String googleImage = 'assets/images/img_google_logo.png';
  static const String appleImage = 'assets/images/img_apple_logo.png';
}

abstract class StringConstants {
  static const String headerText = 'Login to your\nAccount';
  static const String emailText = 'Email';
  static const String passwordText = 'Password';
  static const String obscuringCharacter = '*';
  static const String rememberMeText = 'Remember me';
  static const String signInText = 'Sign in';
  static const String forgotThePasswordText = 'Forgot the password?';
  static const String orContinueWithText = 'or continue with';
  static const String alreadyHaveAccountText = 'Already have an account? ';
  static const String signUpText = 'Sign up';
}
