
import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Domain/Repository/HomePageRepository.dart';

class InMemoryHomePageRepositoryImpl implements HomePageRepository {

  @override
  void registerHomePageInDatabase(HomePage homePage) {
    // TODO: implement createHomePage
    throw UnimplementedError();
  }

  @override
  HomePage findHomePageByDenomination(String homePageDenomination) {
      // TODO: implement findHomePageByDenomination
      throw UnimplementedError();
    }

  @override
  void updateHomePageTitle(HomePage homePage, String homePageTitle) {
    // TODO: implement updateHomePage
    throw UnimplementedError();
  }

  @override
  bool containsHomePage(HomePage homePage) {
    // TODO: implement containsHomePage
    throw UnimplementedError();
  }

  @override
  String retrieveHomePageTitle(HomePage homePage) {
    // TODO: implement displayHomePageTitle
    throw UnimplementedError();
  }

  
  
}