

class HomePage {
  String appTitle;
  String backgroundImageUrl;
  SearchBar searchBar;
  Button bookmarksButton;
  BookList bookList;
  Button shareButton;

  HomePage(String appTitle, String backgroundImageUrl, SearchBar searchBar, BookList bookList, Button shareButton)
  {
    this.appTitle = appTitle;
    this.backgroundImageUrl = backgroundImageUrl;
    this.searchBar = searchBar;
    this.bookList = bookList;
    this.shareButton = shareButton;
  }

}