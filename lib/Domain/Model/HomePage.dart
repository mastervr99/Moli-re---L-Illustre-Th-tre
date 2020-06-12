
class HomePage {
  String homePageDenomination;
  String homePageTitle;

  HomePage(String homePageDenomination)
  {
    this.homePageDenomination = homePageDenomination;
  }

  void registerHomePageTitle(String homePageTitle)
  {
    this.homePageTitle = homePageTitle;
  }

  String retrieveHomePageTitle()
  {
    return this.homePageTitle;
  }

  String retrieveHomePageDenomination()
  {
    return this.homePageDenomination;
  }

  factory HomePage.fromMap(Map<String, dynamic> data){
    HomePage homePage = new HomePage(data["homepage_denomination"]);
    homePage.registerHomePageTitle(data["homepage_title"]);
    return homePage;
  }

  Map<String, dynamic> toMap() => {
    "homepage_denomination": this.retrieveHomePageDenomination(),
    "homepage_title":  this.retrieveHomePageTitle(),
  };

}