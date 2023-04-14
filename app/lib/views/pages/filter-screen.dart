import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/views/widgets/gradientBackground.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      body: Stack(
        children: [
          GradientBackground(screenHeight: screenHeight),
          // text: Filtros
          Positioned(
            top: screenHeight * 0.09,
            left: 0,
            right: 0,
            child: Text(
              'Filtros',
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Poppins',
                fontSize: screenWidth * 0.06,
                // Use percentage of screen width for font size
                fontWeight: FontWeight.w700,
                height: 1.3,
                color: const Color(0xffffffff),
              ),
            ),
          ),
          // linha por baixo de text: Filtros
          Positioned(
            top: screenHeight * 0.15,
            left: 0,
            right: 0,
            child: const Divider(
              color: Colors.white, // Set the color of the line to white
              thickness: 2.0, // Set the thickness of the line
            ),
          ),
          Positioned(
            top: screenHeight * 0.095,
            left: screenWidth * 0.05,
            child: Transform.scale(
              scale: screenWidth * 0.004,
              // Calculate the scale factor based on desired size
              child: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
