import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class CheckMapScreen2 extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    // TODO: implement executeStep

    // Wait for 8 seconds (jobs might take a while to load)
    await Future.delayed(const Duration(seconds: 8));

    final mapScreenFinder = find.byValueKey(input1);

    bool input1Exists = await FlutterDriverUtils.isPresent(world.driver, mapScreenFinder);

    expect(input1Exists, true);
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I am on screen {string}");
}

class CheckMapImageAndDistrict extends Then2WithWorld<String, String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1, String input2) async {
    // TODO: implement executeStep
    final findMapImage = find.byValueKey(input1);
    final findAveiro = find.byValueKey(input2);

    bool input1Exists = await FlutterDriverUtils.isPresent(world.driver, findMapImage);
    bool input2Exists = await FlutterDriverUtils.isPresent(world.driver, findAveiro);

    expect(input1Exists, true);
    expect(input2Exists, true);
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I should have {string} and {string}");
}

class TapDistrict extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    // TODO: implement executeStep
    final aveiroFinder = find.byValueKey(input1);

    await FlutterDriverUtils.tap(world.driver, aveiroFinder);
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I tap aveiro : {string}");
}

// Also checks if it's the correct district screen, as these have different keys depending on the district id
class CheckDistrictScreen extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async{
    // TODO: implement executeStep
    final districtScreenFinder = find.byValueKey(input1);

    bool input1Exists = await FlutterDriverUtils.isPresent(world.driver, districtScreenFinder);

    expect(input1Exists, true);
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I should have districtScreen1 : {string}");
}

class TapDistrictJobButton extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    // TODO: implement executeStep

    final districtJobButtonFinder = find.byValueKey(input1);

    await FlutterDriverUtils.tap(world.driver, districtJobButtonFinder);
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I tap districtJobsButton : {string}");
}
