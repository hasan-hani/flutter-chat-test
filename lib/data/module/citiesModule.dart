import 'package:chatflutter/core/apiLink.dart';
import 'package:chatflutter/data/apiData/crud.dart';

class CountriesModule {
  int? countryId;
  String? countryName;
  String? name;
  int? id;

  CountriesModule({this.countryId, this.countryName, this.name, this.id});

  factory CountriesModule.fromJson(Map<String, dynamic> json) {
    CountriesModule countryModule=new CountriesModule();
    countryModule.countryId = json['countryId'];
    countryModule.countryName = json['countryName'];
    countryModule.name = json['name'];
    countryModule.id = json['id'];
    return countryModule ;
  }
  Future<List<CountriesModule>>getCountries() async{
    Crud _crud=new Crud() ;
    CountriesModule countryModule ;
    List<CountriesModule> listOfCounriesModule=[];
    var response=await _crud.getrequest(linkGetAllCity,{}) ;
    for(int i=0;i<(response["result"] as List).length;i++){
      countryModule=CountriesModule.fromJson((response["result"] as List)[i]) ;
      listOfCounriesModule.add(countryModule) ;
    }

    return listOfCounriesModule ;
}
  Future<List<CountriesModule>>getcitydeendoncertincountry(String selectedCountry) async{
    Crud _crud=new Crud() ;
    CountriesModule countryModule ;
    List<CountriesModule> listOfCounriesModule=[];
    var response=await _crud.getrequest(linkGetAllCity,{}) ;
    for(int i=0;i<(response["result"] as List).length;i++){
      countryModule=CountriesModule.fromJson((response["result"] as List)[i]) ;
      if(countryModule.countryName==selectedCountry){
      listOfCounriesModule.add(countryModule) ;
          }

    }

    return listOfCounriesModule ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['countryId'] = this.countryId;
    data['countryName'] = this.countryName;
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}