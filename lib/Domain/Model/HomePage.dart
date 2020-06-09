
class HomePage {
  String homePageDenomination;
  String homePageTitle;
  String backgroundImageUrl;

  HomePage(String homePageDenomination)
  {
    this.homePageDenomination = homePageDenomination;
  }

  void registerHomePageTitle(String appTitle)
  {
    this.homePageTitle = appTitle;
  }

  String retrieveHomePageTitle()
  {
    return homePageTitle;
  }

  String retrieveHomePageDenomination()
  {
    return homePageDenomination;
  }
}