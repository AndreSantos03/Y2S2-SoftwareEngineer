import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/models/job.dart';
import 'package:myapp/remoteService.dart';
import 'package:myapp/views/pages/map-screen.dart';
import 'package:myapp/views/pages/user-screen.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  List<Job>? jobs;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    // fetch data from API
    getData();
  }

  getData() async {
    // getJobsList is not yet functional
    jobs = await RemoteService().getJobs();
    if (jobs != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
          isLoaded
              // scroll jobs
              ? Positioned(
                  left: screenWidth / 2 - screenWidth * 0.4,
                  // this last part should be half of the value we multiply in the width so it is centered
                  top: screenHeight * 0.26,
                  height: screenHeight * 0.60,
                  width: screenWidth * 0.8,
            child: ListView.builder(
              itemCount: jobs?.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: const Color.fromRGBO(255, 255, 255, 0.83),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobs![index].title ?? '',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          color: const Color(0x93050505),
                        ),
                      ),
                      const SizedBox(height: 5), // add some space between the two Text widgets
                      Text(
                        jobs![index].company?.name ?? '',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: const Color(0x93050505),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
                )
              : const Center(child: CircularProgressIndicator()),
          // row in the bottom of the screen (buttons)
          Positioned(
            left: 0, // keeps centered
            right: 0, // keeps centered
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // button_offers
                SizedBox(
                  width: screenWidth * 0.23,
                  height: screenWidth * 0.23,
                  child: Image.asset(
                    'assets/page-1/images/buttonoffers.png',
                    width: screenWidth * 0.23,
                    height: screenWidth * 0.23,
                  ),
                ),
                const SizedBox(width: 70), // add spacing between images
                // button_map
                TextButton(
                  onPressed: () {
                    // Changes to the other screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapScreen()),
                    );
                  },
                  child: SizedBox(
                    width: screenWidth * 0.12,
                    height: screenWidth * 0.12,
                    child: Image.asset(
                      'assets/page-1/images/buttonmap.png',
                      width: screenWidth * 0.12,
                      height: screenWidth * 0.12,
                    ),
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
          // text
          Positioned(
            top: screenHeight * 0.12,
            left: 0, // keeps centered
            right: 0, // keeps centered
            child: Text(
              'Aqui podes encontrar todas as\npropostas de emprego!\nClica em qualquer uma para\nsaber mais.',
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
