import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class CheckOffersScreen2 extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    // TODO: implement executeStep

    // Wait for 8 seconds (jobs might take a while to load)
    await Future.delayed(const Duration(seconds: 8));

    // First navigate to offers by clicking the button (this is already tested in goToOffersButton.feature)
    await FlutterDriverUtils.tap(world.driver, find.byValueKey("searchButton"));

    final offersScreenFinder = find.byValueKey(input1);

    // Check if offersScreen is present
    bool input1Exists = await FlutterDriverUtils.isPresent(world.driver, offersScreenFinder);

    expect(input1Exists, true);
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I am on {string}");
}

class CheckJob extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    // TODO: implement executeStep

    final jobFinder = find.byValueKey(input1);

    // Check if job is present
    bool input1Exists = await FlutterDriverUtils.isPresent(world.driver, jobFinder);

    expect(input1Exists, true);
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I should see {string}");
}

class ScrollFor2Seconds extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    // TODO: implement executeStep
    final jobListFinder = find.byValueKey(input1);

    await world.driver?.scroll(
      jobListFinder,
      0.0,
      -1000.0,
      const Duration(milliseconds: 300),
      timeout: const Duration(seconds: 2),
    );
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I scroll {string} for 2 seconds");
}