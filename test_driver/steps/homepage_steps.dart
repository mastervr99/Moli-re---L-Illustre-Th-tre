import 'package:gherkin/gherkin.dart';
import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Domain/Repository/HomePageRepository.dart';
import 'package:moliere/Infrastructure/Adapter/Repository/InMemoryHomePageRepositoryImpl.dart';


HomePage homePage = new HomePage("HomepageStepsTest");

class GivenHomePageHasAppTitle extends Given {

  @override
  Future<void> executeStep() async {
    String appTitle = "Test of Title";
    homePage.registerHomePageTitle(appTitle);
    HomePageRepository inMemoryHomePageRepositoryImpl = new InMemoryHomePageRepositoryImpl();
    inMemoryHomePageRepositoryImpl.createHomePage(homePage);
    HomePage homepageInDatabase = inMemoryHomePageRepositoryImpl.findHomePageByDenomination(homePage.retrieveHomePageDenomination());
    expect(homepageInDatabase.displayHomePageTitle(), appTitle);

  }

  @override
  RegExp get pattern => RegExp(r'Homepage has a App Title');
}
