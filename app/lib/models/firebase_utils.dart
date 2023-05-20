import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../views/pages/map-screen.dart';

String errorMessage = '';

Future<void> firebaseSignIn(TextEditingController emailController, TextEditingController passwordController, BuildContext context) async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MapScreen()),
    );
    errorMessage = "";
    changeErrorMessage();
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      errorMessage = 'User not found';
    } else if (e.code == 'wrong-password') {
      errorMessage = 'Password is incorrect.';
    }
  }
  changeErrorMessage();
}

Future<void> firebaseSignUp(TextEditingController emailController, TextEditingController passwordController, BuildContext context) async {

  try {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MapScreen()),
    );

  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      errorMessage = 'The password provided is too weak.';
    } else if (e.code == 'email-already-in-use') {
      errorMessage = 'An account already exists for that email.';
    }
  } catch (e) {
    errorMessage = 'Invalid inputs';
  }
  changeErrorMessage();

}

String changeErrorMessage() {
  return errorMessage;
}
