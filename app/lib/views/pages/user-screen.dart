import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/views/widgets/gradientBackground.dart';
import 'package:myapp/views/widgets/inputTextBoxWidget.dart';
import 'package:myapp/views/widgets/navBar.dart';
import 'package:myapp/views/widgets/rectangularButtonWidget.dart';
import 'package:myapp/views/widgets/selectionDropdownWidget.dart';

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
            GradientBackground(screenHeight: screenHeight + screenHeight * 0.35),
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
                )),
            Positioned(
                top: screenHeight * 0.38,
                left: 0,
                right: 0,
                child: InputTextBox(
                  controller: emailController,
                  topText: 'Email:',
                  hintText: '(email : firebase)',
                )),
            Positioned(
              top: screenHeight * 0.58,
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
                top: screenHeight * 0.63,
                left: screenWidth * 0.048,
                right: screenWidth * 0.35,
                child: RectangularButton(
                  text: 'Alterar password',
                  onPressed: () {},
                  horizontalMargin: 0,
                  backGroundColor: const Color.fromRGBO(102, 152, 173, 1),
                )),
            Positioned(
              top: screenHeight * 0.76,
                left: 0,
                right: 0,
                child: const LanguageSelectionDropdown()
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
