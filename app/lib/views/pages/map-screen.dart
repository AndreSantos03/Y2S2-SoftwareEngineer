import 'package:flutter/material.dart';
import 'package:myapp/views/pages/offers-screen.dart';
import 'package:myapp/views/pages/user-screen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    const double filter_settings_x_offset = 60;
    const double filter_settings_y_offset = 40;
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            height: screenHeight,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0, -7),
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(225, 20, 20, 0.2),
                  Color.fromRGBO(99, 138, 236, 0.69),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0, // keeps centered
            right: 0, // keeps centered
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // button_offers
                TextButton(
                  onPressed: () {
                    // Changes to the other screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OffersScreen()),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth * 0.23,
                    height: screenWidth * 0.23,
                    child: Image.asset(
                      'assets/page-1/images/buttonoffers.png',
                      width: screenWidth * 0.23,
                      height: screenWidth * 0.23,
                    ),
                  ),
                ),
                const SizedBox(width: 70), // add spacing between images
                // button_map
                SizedBox(
                  width: screenWidth * 0.12,
                  height: screenWidth * 0.12,
                  child: Image.asset(
                    'assets/page-1/images/buttonmap.png',
                    width: screenWidth * 0.12,
                    height: screenWidth * 0.12,
                  ),
                ),
                const SizedBox(width: 70), // add spacing between images
                // button_user
                TextButton(
                  onPressed: () {
                    // Changes to the other screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserScreen()),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth * 0.155,
                    height: screenWidth * 0.155,
                    child: Image.asset(
                      'assets/page-1/images/buttonuser.png',
                      width: screenWidth * 0.155,
                      height: screenWidth * 0.155,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // row de filtro e settings
          Positioned(
            left: 0,
            right: 0,
            top: screenHeight / 12,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Changes to the other screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OffersScreen()),
                      );
                    },
                    child: SizedBox(
                      width: screenWidth * 0.10,
                      height: screenWidth * 0.10,
                      child: Image.asset(
                        'assets/page-1/images/buttonfilter.png',
                        width: screenWidth * 0.10,
                        height: screenWidth * 0.10,
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth - screenWidth / 2.5),
              TextButton(
                onPressed: () {
                  // Changes to the other screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OffersScreen()),
                  );
                },
                child: SizedBox(
                  width: screenWidth * 0.10,
                  height: screenWidth * 0.10,
                  child: Image.asset(
                    'assets/page-1/images/buttonsettings.png',
                    width: screenWidth * 0.10,
                    height: screenWidth * 0.10,
                  ),
                ),
              ),
            ]),
          ),
          Positioned(
            left : 0,
            right : 0,
            top: screenHeight / 4,
            child: SizedBox(
                child: Image.asset(
                  'assets/page-1/images/imagemap.png',
                  width: screenWidth,
                  height: screenWidth,
                )),
          )
        ]
      ),
      backgroundColor: Colors.black,
    );
  }
}
