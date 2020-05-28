import 'package:gherkin/gherkin.dart';


class GivenBackgroundImageExist extends Given {

  @override
  Future<void> executeStep() async {

  } 

  @override
  RegExp get pattern => RegExp(r'Background Image exist');
}