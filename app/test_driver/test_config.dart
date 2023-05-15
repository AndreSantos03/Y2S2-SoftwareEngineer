import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/testGeneral.dart';
import 'steps/testScroll.dart';

Future<void> main() {

  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/**.feature")]
    ..reporters = [ProgressReporter()]
    ..stepDefinitions = [
      GivenIAmOnScreen(),
      ScrollFor2Seconds(),
      TapSomething(),
      CheckSomething()
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";

    return GherkinRunner().execute(config);
}