import 'package:flutter/material.dart';
import 'package:myapp/views/widgets/navBar.dart';
import 'package:myapp/views/widgets/gradientBackground.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/views/widgets/inputTextBoxWidget.dart';

class UserScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  UserScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: const NavBar(pageNumber: 2),
      body:
          Stack(
            children: [
              GradientBackground(screenHeight: screenHeight),
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
              top: screenHeight * 0.2,
                left: 0,
                right: 0,
                child: InputTextBox(controller: usernameController, topText: 'Nome de utilizador:', hintText: '(username : firebase)',)
            ),
            ],
          ),
      backgroundColor: Colors.black,
    );
  }
}
