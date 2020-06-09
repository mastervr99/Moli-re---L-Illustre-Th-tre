
import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Domain/Repository/HomePageRepository.dart';

class HomePageService {

  HomePageRepository homePageRepository;

  HomePageService(HomePageRepository homePageRepository)
  {
    this.homePageRepository = homePageRepository;
  }

  void registerHomePageInDatabase(HomePage homePage)
  {
    homePageRepository.registerHomePageInDatabase(homePage);
  }

  HomePage findHomePageByDenomination(String homePageDenomination)
  {
    return homePageRepository.findHomePageByDenomination(homePageDenomination);
  }

  void updateHomePageTitle(HomePage homePage, String homePageTitle) 
  {
    homePageRepository.updateHomePageTitle(homePage, homePageTitle);
  }

  String displayHomePageTitle(HomePage homePage)
  {
    return homePageRepository.retrieveHomePageTitle(homePage);
  }

}