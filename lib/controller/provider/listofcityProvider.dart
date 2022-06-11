import 'package:chatflutter/core/AppData.dart';
import 'package:chatflutter/data/module/citiesModule.dart';
import 'package:chatflutter/data/module/countrymodule.dart';

import 'package:chatflutter/view/widget/customDropDownButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
enum ListScreenState{
  initail,loading,loaded,loadedCountry
}




class ListOfCityProvider extends ChangeNotifier {
  ListScreenState state=ListScreenState.initail ;
  List<CountriesModule>? listOfCitiesModules ;





  getListOfCitydependOnCountry()async{
    listOfCitiesModules=await CountriesModule().
    getcitydeendoncertincountry(globalselectedCountry!) ;
    state=ListScreenState.loaded ;
    notifyListeners() ;
  }
}
////////////////////////////////////////////////////
////////////////////////////////////////////////////
class ListOfCountryProvider extends ChangeNotifier {
  ListScreenState state=ListScreenState.initail ;
  Set<String>? listofnameofCountries ;
  getListOfCountry()async{
    listofnameofCountries=await CountryModul().getListofCountry() ;
    state=ListScreenState.loaded ;
    notifyListeners() ;
  }
}
//=====================================================
//=====================================================
//=====================================================
class ListOfCityAndCountryProvider extends ChangeNotifier{
  ListScreenState state=ListScreenState.initail ;
  List<CountriesModule>? listOfCitiesModules ;
  Set<String>? listofnameofCountries ;
  getListOfCountry()async{
    listofnameofCountries=await CountryModul().getListofCountry() ;
    state=ListScreenState.loadedCountry ;
    notifyListeners() ;
  }

  getListOfCitydependOnCountry()async{
    listOfCitiesModules=await CountriesModule().
    getcitydeendoncertincountry(globalselectedCountry!) ;
    state=ListScreenState.loaded ;
    notifyListeners() ;
  }

}

class TestCountryCity extends StatelessWidget {
  ListOfCityAndCountryProvider? provider ;
  @override
  Widget build(BuildContext context) {
    provider=Provider.of<ListOfCityAndCountryProvider>(context) ;
    if(provider!.state==ListScreenState.initail){
      provider!.getListOfCountry() ;
      return Scaffold(body:Center(child: Text('.......Lodding'))) ;
    }
    if(provider!.state==ListScreenState.loadedCountry){
      provider!.getListOfCitydependOnCountry() ;
      return Scaffold(
        body:CustomDropDownButton(
            hint: 'Country',
            items: provider!.listofnameofCountries!.map((e) => e).toList())
      );
    }
    return Scaffold(
      body: Column(
        children: [
          CustomDropDownButton(
              hint: 'Country',
              items: provider!.listofnameofCountries!.map((e) => e).toList()),
          //CustomDropDownButton(hint: 'City', items: provider!.listOfCitiesModules!.map((city) => city.name.toString()).toList())
          Center(child:Text('City'))
        ],
      ),
    );
  }
}
