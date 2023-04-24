import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/inputTextBoxWidget.dart';
import '../widgets/gradientBackground.dart';
import '../widgets/rectangularButtonWidget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      body:Stack(
        children: [
          GradientBackground(screenHeight: screenHeight),
          Positioned(
              top: 0.15 * screenHeight,
              left: 0,
              right: 0,
              child:
              const Center(
                child:  SizedBox(
                  child:  Text(
                    "LOGIN",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              )
          ),
          Positioned(
            top: 0.25 * screenHeight,
            left: 0,
            right: 0,
            height: 0.5 * screenHeight,
            child:
                InputTextBox(
                controller: emailController,
                    topText: "",
                    hintText: "email"),
          ),

            Positioned(
              top: 0.35 * screenHeight,
              left: 0,
              right: 0,
              child: InputTextBox(
                  controller: passwordController,
                  topText: "",
                  hintText: "password"),
            ),
            Positioned(
              top: 0.52 * screenHeight,
              left: 0,
              right: 0,
              child: RectangularButton(
                text: "Login",
                backGroundColor: const Color.fromRGBO(102, 152, 173, 1),
                onPressed: signIn,
                horizontalMargin: 0.03 * screenWidth,
                    ),
            ),
          Positioned(
              top: 0.7 * screenHeight,
              left: 0,
              right: 0,
              child: Image.asset(
                "assets/page-1/images/loginScreenImg.png",
              ),
          )
            ]
      ),
      backgroundColor: Colors.black,
    );
  }

    Future signIn() async {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
      } on FirebaseAuthException catch (e) {
        print(e);
      }
  }
}

