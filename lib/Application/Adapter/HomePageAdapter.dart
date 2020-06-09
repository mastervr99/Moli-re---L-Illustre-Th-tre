

import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Domain/Service/HomePageService.dart';

class HomePageAdapter {

  HomePage homePage;

  HomePageService homePageService;

  HomePageAdapter(HomePageService homePageService)
  {
    this.homePageService = homePageService;
  }

  void specifyHomepage(HomePage homePage)
  {
    this.homePage = homePage;
  }

  HomePage registerHomePageInDatabase()
  {
    homePageService.registerHomePageInDatabase(this.homePage);
  }

  HomePage findHomePageByDenomination(String homePageDenomination)
  {
    homePageService.findHomePageByDenomination(homePageDenomination);
  }

  void updateHomePageTitle(String homePageTitle) 
  {
    homePageService.updateHomePageTitle(this.homePage, homePageTitle);
  }

  String displayHomePageTitle()
  {
    homePageService.displayHomePageTitle(this.homePage);
  }

}