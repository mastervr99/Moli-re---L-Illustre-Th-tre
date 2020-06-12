
import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Infrastructure/Database/AbstractDatabase.dart';

abstract class HomePageRepository {

  AbstractDatabase homePageData;

  HomePageRepository(AbstractDatabase homePageData)
  {
    this.homePageData = homePageData;
  }

  void registerHomePageInDatabase(HomePage homePage);

  void updateHomePageTitle(HomePage homePage, String homePageTitle);

  HomePage findHomePageByDenomination(String homePageDenomination);

  bool containsHomePage(HomePage homePage); 

  String retrieveHomePageTitle(HomePage homePage);

}