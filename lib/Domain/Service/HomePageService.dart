
import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Domain/Repository/HomePageRepository.dart';

class HomePageService {

  HomePageRepository homePageRepository;

  HomePageService(HomePageRepository homePageRepository)
  {
    this.homePageRepository = homePageRepository;
  }

  HomePage registerHomePageInDatabase(HomePage homePage)
  {
    homePageRepository.registerHomePageInDatabase(homePage);
  }

  HomePage findHomePageByDenomination(String homePageDenomination)
  {
    homePageRepository.findHomePageByDenomination(homePageDenomination);
  }

  void updateHomePageTitle(HomePage homePage, String homePageTitle) 
  {
    homePageRepository.updateHomePageTitle(homePage, homePageTitle);
  }

  String displayHomePageTitle(HomePage homePage)
  {
    homePageRepository.retrieveHomePageTitle(homePage);
  }

}