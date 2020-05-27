import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/homePageFeatureSteps/given_homepage_exist_step.dart';
import 'steps/homePageFeatureSteps/when_display_homepage_step.dart';


Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/**.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ] // you can include the "StdoutReporter()" without the message level parameter for verbose log information
    // ..hooks = [HookExample()]
    ..stepDefinitions = [
      GivenHomepageExist(),
      WhenDisplayHomepageStep(),
      ]
    // ..customStepParameterDefinitions = [ColourParameter()]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart"
    // ..tagExpression = "@smoke" // uncomment to see an example of running scenarios based on tag expressions
    ..exitAfterTestRun = true; // set to false if debugging to exit cleanly
  return GherkinRunner().execute(config);
}