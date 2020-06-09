import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:moliere/Application/Adapter/HomePageAdapter.dart';
import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Domain/Repository/HomePageRepository.dart';
import 'package:moliere/Domain/Service/HomePageService.dart';
import 'package:moliere/Infrastructure/Adapter/Repository/InMemoryHomePageRepositoryImpl.dart';
import 'package:test/test.dart';


HomePage homePageTest = new HomePage("HomepageStepsTest");
String homePageTestDenomination = homePageTest.retrieveHomePageDenomination();
HomePageRepository homePageRepositoryTest = new InMemoryHomePageRepositoryImpl();
HomePageService homePageServiceTest = new HomePageService(homePageRepositoryTest);
HomePageAdapter homePageAdapterTest = new HomePageAdapter(homePageServiceTest);    

class GivenHomePageHasTitle extends Given {

  @override
  Future<void> executeStep() async {
    String homePageTitle = "Test of Title";
    homePageAdapterTest.specifyHomepageParameter(homePageTest);
    homePageAdapterTest.updateHomePageTitle(homePageTitle);
    HomePageAdapter givenHomePageTitleStepAdapter = new HomePageAdapter(homePageServiceTest);
    HomePage givenhomePageTitleStepInDatabase = givenHomePageTitleStepAdapter.findHomePageByDenomination(homePageTestDenomination);
    expectMatch(givenhomePageTitleStepInDatabase.retrieveHomePageTitle(), homePageTitle);
  }

  @override
  RegExp get pattern => RegExp(r'homepage a un titre');
}
