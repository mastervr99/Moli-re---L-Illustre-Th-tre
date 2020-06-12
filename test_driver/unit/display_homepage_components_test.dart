
import 'package:moliere/Application/Adapter/HomePageAdapter.dart';
import 'package:moliere/Domain/Model/HomePage.dart';
import 'package:moliere/Application/Usecase/DisplayHomePageComponents.dart';
import 'package:moliere/Domain/Repository/HomePageRepository.dart';
import 'package:moliere/Domain/Service/HomePageService.dart';
import 'package:moliere/Infrastructure/Adapter/Repository/InMemoryHomePageRepositoryImpl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DisplayHomePageComponents', () {

    final HomePage homePageUnit = new HomePage("homePageDenominationUnit");
    
    final String homePageDenominationUnit = homePageUnit.retrieveHomePageDenomination();
    final HomePageRepository homePageRepositoryTest = new InMemoryHomePageRepositoryImpl();
    final HomePageService homePageServiceTest = new HomePageService(homePageRepositoryTest);
    final HomePageAdapter homePageAdapterTest = new HomePageAdapter(homePageServiceTest);   
  
    void _assertThatAllComponentsAreDisplayed()
    {

    }

    test('HomePage should display all components', () {



        expect("str","test");

       _assertThatAllComponentsAreDisplayed();
    });

  });  
 

  
}