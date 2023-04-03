import 'package:flutter/material.dart';
import 'package:myapp/views/pages/discrict-screen.dart';

class MapImage extends StatelessWidget {
  const MapImage({super.key});

  @override
  Widget build(BuildContext context) {

    double opacity = 0.0; // testing purposes

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          children: [
            // Map Image
            Image.asset(
              'assets/page-1/images/imagemap.png',
              fit: BoxFit.cover,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
            ),
            // Hitboxes
            // Viana do Castelo (id 22)
            Positioned(
              left: constraints.maxWidth * 0.28,
              top: constraints.maxHeight * 0.024,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DistrictScreen(id: 22),
                    ),
                  );
                },
                child: Container(
                  width: constraints.maxWidth * 0.2,
                  height: constraints.maxHeight * 0.075,
                  color: Colors.red.withOpacity(opacity),
                ),
              ),
            ),
            // Braga (id 4)
            Positioned(
              left: constraints.maxWidth * 0.32,
              top: constraints.maxHeight * 0.10,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DistrictScreen(id: 4),
                    ),
                  );
                },
                child: Container(
                  width: constraints.maxWidth * 0.2,
                  height: constraints.maxHeight * 0.06,
                  color: Colors.blue.withOpacity(opacity),
                ),
              ),
            ),
            // Porto (id 18)
            Positioned(
              left: constraints.maxWidth * 0.32,
              top: constraints.maxHeight * 0.16,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DistrictScreen(id: 18),
                    ),
                  );
                },
                child: Container(
                  width: constraints.maxWidth * 0.23,
                  height: constraints.maxHeight * 0.06,
                  color: Colors.red.withOpacity(opacity),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

