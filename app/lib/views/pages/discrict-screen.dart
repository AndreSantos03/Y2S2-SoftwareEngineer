import 'package:flutter/material.dart';
import 'package:myapp/models/job.dart';
import 'package:myapp/remoteService.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/views/pages/district-jobs.dart';
import 'package:myapp/views/pages/map-screen.dart';
import 'package:myapp/views/widgets/gradientBackground.dart';
import 'package:myapp/views/widgets/smoothRectangle.dart';

class DistrictScreen extends StatefulWidget {
  int id;

  DistrictScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<DistrictScreen> createState() => _DistrictScreenState();
}

class _DistrictScreenState extends State<DistrictScreen> {
  Map<int, String> idDistrict = {
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

  List<Job>? jobs;
  var isLoaded = false;

  getData() async {
    jobs = await RemoteService()
        .getJobs(q: idDistrict[widget.id]!); // Query: district name
    if (jobs != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    // fetch data from API
    getData();
  }

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
              child:
                  const Icon(Icons.arrow_back, color: Colors.white, size: 40),
            ),
          ),
          // District name
          Positioned(
            top: screenHeight * 0.17,
            left: screenWidth * 0.12,
            child: Text(
              idDistrict[widget.id]!, // get district name from id
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
          // First rectangle
          SmoothRectangle(topRatio: 0.3),
          // Icon empregos
          Positioned(
            top: screenHeight * 0.312,
            left: screenWidth * 0.14,
            child: Icon(
              Icons.supervised_user_circle,
              color: Colors.black.withOpacity(0.6),
              size: 40,
            ),
          ),
          // Texto empregos
          Positioned(
            top: screenHeight * 0.323,
            left: screenWidth * 0.26,
            child: Text(
              'Empregos',
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                height: 1.3,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
          // Numero empregos
          Positioned(
            top: screenHeight * 0.323,
            right: screenWidth * 0.18,
            child: Text(
              jobs?.length.toString() ?? '0',
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                height: 1.3,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
          // Retangulo empresas
          SmoothRectangle(topRatio: 0.38),
          // Icon empresas
          Positioned(
            top: screenHeight * 0.394,
            left: screenWidth * 0.14,
            child: Icon(
              Icons.supervised_user_circle,
              color: Colors.black.withOpacity(0.6),
              size: 40,
            ),
          ),
          // Texto empresas
          Positioned(
            top: screenHeight * 0.404,
            left: screenWidth * 0.26,
            child: Text(
              'Empresas',
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                height: 1.3,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
          // Retangulo preto
          Positioned(
            left: screenWidth * 0.12,
            top: screenHeight * 0.85,
            width: screenWidth * 0.75,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DistrictJobsScreen(id: widget.id),
                  ),
                );
              },
              child: Container(
                height: screenHeight * 0.07,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10), // set the desired radius of the corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // set the shadow color
                      spreadRadius: 3, // set the shadow spread radius
                      blurRadius: 7, // set the shadow blur radius
                      offset: const Offset(0, 3), // set the shadow offset
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Texto ver todos os empregos
          Positioned(
            top: screenHeight * 0.874,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DistrictJobsScreen(id: widget.id),
                  ),
                );
              },
              child: Text(
                'Ver todos os empregos',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
