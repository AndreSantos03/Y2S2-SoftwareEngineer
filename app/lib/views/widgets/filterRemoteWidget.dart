import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class FilterRemoteWidget extends StatelessWidget {
  const FilterRemoteWidget({Key? key}) : super(key: key);

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

    List<String> categories = [
      'Trabalho remoto',
    ];

    return
      Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.63),
        child: Stack(
            children: [
              Positioned(
                left: screenWidth * 0.06,
                child: Text(
                  'Remoto',
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
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: screenHeight * 0.01),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: 10,
                        ),
                        decoration:
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromRGBO(255, 255, 255, 0.83),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              categories[index],
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.5,
                                color: const Color(0x93050505),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: Checkbox(
                                value: false,
                                onChanged: (bool? newValue) {},
                              ),
                            )
                          ],
                        ));
                  }),
            ]
        ),
      );
  }
}