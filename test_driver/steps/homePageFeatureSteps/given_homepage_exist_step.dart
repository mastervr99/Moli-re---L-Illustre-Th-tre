import 'package:gherkin/gherkin.dart';


class GivenHomepageExist extends Given {

  @override
  Future<void> executeStep() async {

  } 

  @override
  RegExp get pattern => RegExp(r'Homepage exist');
}