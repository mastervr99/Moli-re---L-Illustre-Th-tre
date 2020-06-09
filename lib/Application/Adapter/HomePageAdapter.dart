

import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Domain/Service/HomePageService.dart';

class HomePageAdapter {

  HomePage homePage;

  HomePageService homePageService;

  HomePageAdapter(HomePageService homePageService)
  {
    this.homePageService = homePageService;
  }

  void specifyHomepageParameter(HomePage homePage)
  {
    this.homePage = homePage;
  }

  void registerHomePageInDatabase()
  {
    homePageService.registerHomePageInDatabase(this.homePage);
  }

  HomePage findHomePageByDenomination(String homePageDenomination)
  {
    return homePageService.findHomePageByDenomination(homePageDenomination);
  }

  void updateHomePageTitle(String homePageTitle) 
  {
    homePageService.updateHomePageTitle(this.homePage, homePageTitle);
  }

  String displayHomePageTitle()
  {
    return homePageService.displayHomePageTitle(this.homePage);
  }

}