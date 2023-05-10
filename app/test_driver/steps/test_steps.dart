import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class CheckGivenWidgets extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async{
    // TODO: implement executeStep

    final buttonInput1 = find.byValueKey(input1);

    bool input1Exists = await FlutterDriverUtils.isPresent(world.driver, buttonInput1);

    expect(input1Exists, true);
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I have {string}");
}

class ClickUserButton extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    // TODO: implement executeStep
    final buttonUserFinder = find.byValueKey(input1);

    await FlutterDriverUtils.tap(world.driver, buttonUserFinder);
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I tap the {string} button");

}

class CheckUserScreen extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {

    await Future.delayed(Duration(seconds: 2)); // Wait for 2 seconds

    final userScreenFinder = find.byValueKey(input1);

    bool input1Exists = await FlutterDriverUtils.isPresent(world.driver, userScreenFinder);

    expect(input1Exists, true);
  }

  @override
  // TODO: implement pattern
  Pattern get pattern => RegExp(r"I should have {string} on screen");
}