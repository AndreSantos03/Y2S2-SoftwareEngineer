import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/views/widgets/gradientBackground.dart';
import 'package:myapp/views/widgets/inputTextBoxWidget.dart';
import 'package:myapp/views/widgets/navBar.dart';
import 'package:myapp/views/widgets/rectangularButtonWidget.dart';
import 'package:myapp/views/widgets/selectionDropdownWidget.dart';
import 'package:myapp/views/pages/change-password-screen.dart';

import 'map-screen.dart';

class UserScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: const NavBar(pageNumber: 2),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Stack(
          children: [
            GradientBackground(
                screenHeight: screenHeight + screenHeight * 0.55),
            Positioned(
              top: screenHeight * 0.1,
              left: 0,
              right: 0,
              child: Text(
                'As tuas informações pessoais:',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Positioned(
                top: screenHeight * 0.18,
                left: 0,
                right: 0,
                child: InputTextBox(
                  controller: usernameController,
                  topText: 'Nome de utilizador:',
                  hintText: '(username : firebase)',
                  obsText: false,
                )),
            Positioned(
                top: screenHeight * 0.38,
                left: 0,
                right: 0,
                child: InputTextBox(
                  controller: emailController,
                  topText: 'Email:',
                  hintText: '(email : firebase)',
                  obsText: false,
                )),
            Positioned(
                top: screenHeight * 0.55,
                left: 0,
                right: 0,
                child: RectangularButton(text: 'Save', onPressed: () {}, horizontalMargin: screenWidth * 0.15, backGroundColor: const Color.fromRGBO(102, 152, 173, 1))),
            Positioned(
              top: screenHeight * 0.66,
              left: screenWidth * 0.05,
              child: Text(
                'Password:',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Positioned(
                top: screenHeight * 0.71,
                left: screenWidth * 0.048,
                right: screenWidth * 0.35,
                child: RectangularButton(
                  text: 'Alterar password',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangePasswordScreen()),
                    );
                  },
                  horizontalMargin: 0,
                  backGroundColor: const Color.fromRGBO(102, 152, 173, 1),
                )),
            Positioned(
              top: screenHeight * 0.83,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const LanguageSelectionDropdown(),
                  const SizedBox(height: 16),
                  // add some space between the widgets
                  RectangularButton(
                      text: 'Logout',
                      onPressed: () =>logOut(context),
                      horizontalMargin: screenWidth * 0.15,
                      backGroundColor: const Color.fromRGBO(102, 152, 173, 1)),
                ],
              ),
            )

          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
  Future<void> logOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MapScreen()),
      );
    } catch (e) {
      print('Error: $e');
    }
  }
}
