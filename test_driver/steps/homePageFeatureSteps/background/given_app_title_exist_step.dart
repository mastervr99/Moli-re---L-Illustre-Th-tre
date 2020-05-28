import 'package:gherkin/gherkin.dart';


class GivenAppTitleExist extends Given {

  @override
  Future<void> executeStep() async {

  } 

  @override
  RegExp get pattern => RegExp(r'App Title exist');
}