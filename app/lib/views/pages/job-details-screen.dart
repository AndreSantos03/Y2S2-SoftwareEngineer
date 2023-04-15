import 'package:flutter/material.dart';
import 'package:myapp/models/job.dart';
import 'package:myapp/views/widgets/gradientBackground.dart';
import 'package:html/parser.dart';
import '../../utils.dart';
import '../widgets/navBar.dart';


class JobDetailsScreen extends StatelessWidget {
  final Job job;

  JobDetailsScreen({required this.job});

  Map<int, String> idDistrict = {
    0: 'Nada',
    1: 'Aveiro',
    3: 'Beja',
    4: 'Braga',
    5: 'Bragança',
    6: 'Castelo Branco',
    8: 'Coimbra',
    9: 'Faro',
    10: 'Évora',
    11: 'Guarda',
    12: 'Portalegre',
    13: 'Leiria',
    14: 'Lisboa',
    16: 'Viseu',
    17: 'Setúbal',
    18: 'Porto',
    20: 'Santarém',
    21: 'Vila Real',
    22: 'Viana do Castelo',
  };

  String? _parseHtmlString(String? htmlString) {
    var document = parse(htmlString);
    String? parsedString =
        parse(document.body?.text ?? '').documentElement?.text; // Use null assertion here
    return parsedString;
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;


    return Scaffold(
      bottomNavigationBar: const NavBar(
        pageNumber: 1,
      ),
      body: Stack(
        children: [
          GradientBackground(screenHeight: screenHeight),
          Positioned(
              top: 0.1 * screenHeight,
              left: 0.05 * screenWidth,
                 child: SizedBox(
                   width: screenWidth * 0.8,
                   height: screenHeight *0.4,
                   child: Text(
                    _parseHtmlString(job.body ?? "No Description")!,
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: screenWidth * 0.04,

                      // Use percentage of screen width for font size
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffffff),
                      )
                    ),
                 ),
            )
      ]
        ),
      backgroundColor: Colors.black,

    );
  }
}
