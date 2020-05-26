import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../../../lib/Domain/Model/HomePage.dart';

class WhenDisplayHomepageStep extends  When{

  @override
  Future<void> executeStep() async {
    HomePage homepage = new HomePage();
    homepage.display();
  }

  @override
  RegExp get pattern => RegExp(r'Homepage is displaying');
}
