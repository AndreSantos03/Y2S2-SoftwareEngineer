import 'package:flutter/material.dart';
import 'package:myapp/views/widgets/filterPriceWidget.dart';
import 'package:myapp/views/widgets/filterRemoteWidget.dart';
import 'package:myapp/views/widgets/filterTechnologiesWidget.dart';
import 'package:myapp/views/widgets/filterTopWidget.dart';
import 'package:myapp/views/widgets/gradientBackground.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(children: [
        GradientBackground(screenHeight: screenHeight),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FilterPriceWidget(),
              const FilterRemoteWidget(),
              const FilterTechnologiesWidget(),
            ],
          ),
        ),
        const FilterTopWidget(),
      ]),
      backgroundColor: Colors.black,
    );
  }
}
