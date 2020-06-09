
import 'package:moliere/Domain/Model/HomePage.dart';

abstract class HomePageRepository {

  HomePage registerHomePageInDatabase(HomePage homePage);

  void updateHomePageTitle(HomePage homePage, String homePageTitle);

  HomePage findHomePageByDenomination(String homePageDenomination);

  bool containsHomePage(HomePage homePage); 

  String retrieveHomePageTitle(HomePage homePage);

}