import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/testClickMapDistrict.dart';
import 'steps/testGoToOffersButton.dart';
import 'steps/testSeeJob.dart';

Future<void> main() {

  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/**.feature")]
    ..reporters = [ProgressReporter()]
    ..stepDefinitions = [
      // Iteration 1 - Test 1
      CheckMapScreen(),
      ClickSearchButton(),
      CheckOffersScreen(),

    // Iteration 1 - Test 2
      CheckOffersScreen2(),
      CheckJob(),
      ScrollFor2Seconds(),

      // Iteration 2 - Test 1
      CheckMapScreen2(),
      CheckMapImageAndDistrict(),
      TapDistrict(),
      CheckDistrictScreen(),
      TapDistrictJobButton(),
      CheckJob()
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";

    return GherkinRunner().execute(config);
}