
import 'package:moliere/Application/Adapter/HomePageAdapter.dart';
import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Application/Usecase/DisplayHomePageComponents.dart';
import 'package:moliere/Domain/Repository/HomePageRepository.dart';
import 'package:moliere/Domain/Service/HomePageService.dart';
import 'package:moliere/Infrastructure/Adapter/Repository/InMemoryHomePageRepositoryImpl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DisplayHomePageComponents', () {

    HomePage homePageUnit = new HomePage("homePageDenominationUnit");
    
    String homePageDenominationUnit = homePageUnit.retrieveHomePageDenomination();
    HomePageRepository homePageRepositoryTest = new InMemoryHomePageRepositoryImpl();
    HomePageService homePageServiceTest = new HomePageService(homePageRepositoryTest);
    HomePageAdapter homePageAdapterTest = new HomePageAdapter(homePageServiceTest);   


    test('HomePage should display a title', () {

      
    });

  });  
  


 
  
  
}