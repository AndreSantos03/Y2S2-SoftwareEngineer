import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/testGoToOffersButton.dart';
import 'steps/testSeeJob.dart';

Future<void> main() {

  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/**.feature")]
    ..reporters = [ProgressReporter()]
    ..stepDefinitions = [CheckMapScreen(), ClickSearchButton(), CheckOffersScreen(), CheckOffersScreen2(), CheckJob(), ScrollFor2Seconds(), CheckJob()]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";
    return GherkinRunner().execute(config);
}