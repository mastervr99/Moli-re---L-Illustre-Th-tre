import 'package:gherkin/gherkin.dart';


class GivenBooksListExist extends Given {

  @override
  Future<void> executeStep() async {

  } 

  @override
  RegExp get pattern => RegExp(r'Books list exist');
}