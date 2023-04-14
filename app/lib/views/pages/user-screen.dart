import 'package:flutter/material.dart';
import 'package:myapp/views/widgets/navBar.dart';
import 'package:myapp/views/widgets/gradientBackground.dart';
import 'map-screen.dart';
import 'offers-screen.dart';
import 'package:myapp/utils.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

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
                top: screenHeight * 0.27,
                left: 0,
                right: 0,
                child: Text(
                  'Atualiza as tuas competências \n para usá-las como filtro.',
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
            ],
          ),
      backgroundColor: Colors.black,
    );
  }
}
