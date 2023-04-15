import 'package:flutter/material.dart';
import 'package:myapp/models/job.dart';
import 'package:myapp/views/widgets/gradientBackground.dart';
import 'package:html/parser.dart';
import '../../utils.dart';
import '../widgets/navBar.dart';
import 'job-details-screen.dart';


class CompanyDetailsScreen extends StatelessWidget {
  final Company company;
  final Job job;

  CompanyDetailsScreen({required this.company, required this.job});

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
    double aspectRatio = MediaQuery
        .of(context)
        .size
        .aspectRatio;


    return Scaffold(
      bottomNavigationBar: const NavBar(
        pageNumber: 1,
      ),
      body: Stack(
          children: [
            GradientBackground(screenHeight: screenHeight),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.08, left: screenWidth * 0.05),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JobDetailsScreen(job: job),
                      ),
                    );
                  },
                  child: const Icon(Icons.arrow_back,
                  color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.08, right: screenWidth * 0.05),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JobDetailsScreen(job: job),
                      ),
                    );
                  },
                  child: Text (
                    "Id: ${company.id}",
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xffffffff),
                ),
              ),
            ),
          ),
        ),
            Positioned(
              top: 0.13 * screenHeight,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.1,
                  child: Text(
                    company.name!,
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffffffff),

                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0.23 * screenHeight,
              left: 0.1 * screenWidth,

                child: SizedBox(
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.1,
                  child: Text(
                    "About us:",
                    textAlign: TextAlign.left,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),

            Positioned(
              top: 0.27 * screenHeight,
              left: 0.1 * screenWidth,

              child: SizedBox(
                width: screenWidth * 0.7,
                height: screenHeight * 0.1,
                child: Text(
                  company.description,
                  textAlign: TextAlign.left,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ]
      ),
      backgroundColor: Colors.black,

    );
  }
}