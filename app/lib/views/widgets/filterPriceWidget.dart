import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class FilterPriceWidget extends StatelessWidget {
  const FilterPriceWidget({Key? key}) : super(key: key);

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

    List<String> salaries = [
      '€5 000 - €10 000',
      '€10 000 - €20 000',
      '€20 000 - €40 000',
      '€40 000 - €60 000',
      '€60 000 - €80 000',
      '€80 000+'
    ];

    return
      Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.16),
        child: Stack(
            children: [
              Positioned(
                left: screenWidth * 0.06,
                child: Text(
                  'Salário',
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
                  itemCount: salaries.length,
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
                              salaries[index],
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
