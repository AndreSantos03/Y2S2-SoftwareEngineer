import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/views/pages/map-screen.dart';
import 'package:myapp/views/widgets/gradientBackground.dart';

class DistrictScreen extends StatelessWidget {
  int id;

  DistrictScreen({Key? key, required this.id}) : super(key: key);

  Map<int, String> idDistrict = {
    4: 'Braga',
    14: 'Lisboa',
    18: 'Porto',
    22: 'Viana do Castelo',
  };

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          GradientBackground(screenHeight: screenHeight),
          // Go back arrow
          Positioned(
            top: screenHeight * 0.12,
            left: screenWidth * 0.12,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapScreen()),
                );
              },
              child: const Icon(Icons.arrow_back, color: Colors.white, size: 40),
            ),
          ),
          // District name
          Positioned(
            top: screenHeight * 0.17,
            left: screenWidth * 0.12,
            child: Text(
              idDistrict[id]!, // get district name from id
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 32,
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
