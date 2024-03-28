// ignore_for_file: unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_app/features/auth/presentation/views_model/cubits/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  GlobalKey<FormState> signInFormKey = GlobalKey();
  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  TextEditingController signUpName = TextEditingController();
  TextEditingController signUpLastName = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  bool termsAndCondition = false;
  bool obscureText = true;

  Future<void> signUp() async {
    signUpFormKey.currentState!.validate();
    try {
      emit(SignUpLoading());
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: signUpEmail.text,
        password: signUpPassword.text,
      );
      addUsersProfile();
      verifyEmail();
      emit(SignUpSucces());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailure(errorMessage: "weak password"));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailure(errorMessage: "email already in use"));
      } else if (e.code == "invalid-email") {
        emit(SignUpFailure(errorMessage: "invalid-email"));
      }
    } catch (e) {
      emit(SignUpFailure(errorMessage: e.toString()));
    }
    signUpEmail.clear();
    signUpPassword.clear();
    signUpName.clear();
    signUpLastName.clear();
  }

  Future<void> signIn() async {
    signInFormKey.currentState!.validate();
    try {
      emit(LoginLoading());
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: signInEmail.text,
        password: signInPassword.text,
      );
      emit(LoginUpSucces());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailure(errorMessage: "No user found for that email."));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailure(
            errorMessage: "Wrong password provided for that user."));
      } else {
        emit(LoginFailure(
            errorMessage: "enter correct email and password please!"));
      }
    }
  }

  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  Future<void> forgetPassword() async {
    emit(ForgetPasswordLoading());
    if (signInEmail.text.isEmpty) {
      emit(ForgetPasswordFailure());
    } else {
      FirebaseAuth.instance.sendPasswordResetEmail(email: signInEmail.text);
      emit(ForgetPasswordSucces());
      signInEmail.clear();
    }
  }

  Future<void> addUsersProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.add({
      "fitst_name": signUpName.text,
      "last_name": signUpLastName.text,
      "email": signUpEmail.text,
      "password": signUpPassword.text,
    });
  }

  void termsAndConditionCheckBox({required newValue}) {
    termsAndCondition = newValue;
    emit(TermsAndConditionState());
  }

  void showPassword() {
    if (obscureText == true) {
      obscureText = false;
    } else {
      obscureText = true;
    }
    emit(ShowPasswordState());
  }
}
