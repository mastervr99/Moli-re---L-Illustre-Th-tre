import 'package:gherkin/gherkin.dart';


class GivenShareButtonExist extends Given {

  @override
  Future<void> executeStep() async {

  } 

  @override
  RegExp get pattern => RegExp(r'ShareButton exist');
}