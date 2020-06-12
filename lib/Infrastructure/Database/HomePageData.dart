
import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Infrastructure/Database/AbstractDatabase.dart';
import 'package:sqflite/sqflite.dart';


class HomePageData extends AbstractDatabase {
  HomePageData(String databaseName) : super(databaseName);

  @override
  Future<void> _populateDb(Database database, int version) async {
    await database.execute('''
    CREATE TABLE Homepage (
      "id INTEGER PRIMARY KEY",
      "homepage_denomination TEXT NOT NULL",
      "homepage_title TEXT"
      )
    ''');    
  }

  Future<int> registerHomePage(HomePage homePage) async {
    var result = await database.insert("Homepage", homePage.toMap());
    return result;
  }

  Future<HomePage> findHomePageByDenomination(String homePageDenomination) async {
    var results = await database.rawQuery('SELECT * FROM Homepage WHERE homepage_Denomination = $homePageDenomination');

    if(results.length > 0)
    {
      return new HomePage.fromMap(results.first);
    }

    return null;
  }
  
  Future<int> updateHomePageTitle(HomePage homePage, String homePageTitle) async{
    var result = await database.rawUpdate(
      'UPDATE Homepage SET homepage_title = $homePageTitle WHERE homepage_denomination = ${homePage.retrieveHomePageDenomination()}'
    );
    
    return result;
  }

  Future<bool> containsHomePage(HomePage homePage) async{
    var result = await database.rawQuery(
      'SELECT * From Homepage WHERE homepage_denomination = ${homePage.retrieveHomePageDenomination()}'
      );

    if(result.length > 0)
    {
      return true;
    }
    return false;
  }

  Future<String> retrieveHomePageTitle(HomePage homePage) async{
    var result = await database.rawQuery(
      'SELECT homepage_title FROM Homepage WHERE homepage_denomination = ${homePage.retrieveHomePageDenomination()}'
    );

    if(result.length > 0)
    {
      return result.toString();
    }

    return null;
  }
}