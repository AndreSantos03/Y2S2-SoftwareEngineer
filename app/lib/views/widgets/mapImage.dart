import 'package:flutter/material.dart';
import 'package:myapp/views/pages/discrict-screen.dart';
import 'package:myapp/views/widgets/mapHitbox.dart';

class MapImage extends StatelessWidget {
  const MapImage({super.key});

  @override
  Widget build(BuildContext context) {

    double opacity = 0.5; // testing purposes
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print(screenWidth);
    print(screenHeight);

    return Padding(
      padding: EdgeInsets.only(top: screenHeight * 0.1),
      child:
      Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              // Map Image
              Image.asset(
                'assets/page-1/images/imagemap.png',
                fit: BoxFit.cover,
                width: constraints.maxWidth * 0.86,
                height: constraints.maxHeight * 0.86,
              ),
              // Hitboxes
              // Aveiro (id 1)
              MapHitbox(constraints: constraints, xRatio: 0.3, yRatio: 0.2, widthRatio: 0.1, heightRatio: 0.1, districtId: 1, opacity: opacity, color: Colors.blue),
              // Braga (id 4)
              MapHitbox(constraints: constraints, xRatio: 0.27, yRatio: 0.085, widthRatio: 0.18, heightRatio: 0.055, districtId: 4, opacity: opacity, color: Colors.blue),
              // Bragança (id 5)
              MapHitbox(constraints: constraints, xRatio: 0.6, yRatio: 0.055, widthRatio: 0.18, heightRatio: 0.13, districtId: 5, opacity: opacity, color: Colors.blue),
              // Coimbra (id 8)
              MapHitbox(constraints: constraints, xRatio: 0.25, yRatio: 0.29, widthRatio: 0.24, heightRatio: 0.07, districtId: 8, opacity: opacity),
              // Guarda (id 11)
              MapHitbox(constraints: constraints, xRatio: 0.55, yRatio: 0.185, widthRatio: 0.15, heightRatio: 0.12, districtId: 11, opacity: opacity),
              // Viseu (id 16)
              MapHitbox(constraints: constraints, xRatio: 0.4, yRatio: 0.185, widthRatio: 0.15, heightRatio: 0.11, districtId: 16, opacity: opacity, color: Colors.black),
              // Porto (id 18)
              MapHitbox(constraints: constraints, xRatio: 0.28, yRatio: 0.14, widthRatio: 0.18, heightRatio: 0.055, districtId: 18, opacity: opacity),
              // Vila Real (id 21)
              MapHitbox(constraints: constraints, xRatio: 0.45, yRatio: 0.065, widthRatio: 0.14, heightRatio: 0.11, districtId: 21, opacity: opacity),
              // Viana do Castelo (id 22)
              MapHitbox(constraints: constraints, xRatio: 0.25, yRatio: 0.024, widthRatio: 0.18, heightRatio: 0.065, districtId: 22, opacity: opacity)
            ],
          );
        },
      ),
    ),
    );
  }
}

