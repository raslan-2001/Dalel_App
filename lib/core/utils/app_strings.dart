import 'package:dalel_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

abstract class AppStrings {
  static Text dalel = const Text("Dalel");
  static Text next = const Text(
    "Next",
    style: TextStyle(fontSize: 20),
  );
  static Text createAccount = const Text(
    "Create Account",
    style: TextStyle(fontSize: 20),
  );

  static Text signIn = Text(
    "Sign In",
    style: Styles.textStyle18,
  );
  static Text sendVerificationCode = Text(
    "Send Rest Password Code",
    style: Styles.textStyle18,
  );
  static Text signUp = Text(
    "Sign Up",
    style: Styles.textStyle18,
  );
}
