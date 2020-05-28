import 'package:gherkin/gherkin.dart';


class GivenSearchBarExist extends Given {

  @override
  Future<void> executeStep() async {

  } 

  @override
  RegExp get pattern => RegExp(r'SearchBar exist');
}