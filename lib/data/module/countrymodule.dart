import 'package:chatflutter/core/apiLink.dart';
import 'package:chatflutter/data/apiData/crud.dart';
import 'package:flutter/material.dart';

class CountryModul {
  List<Result>? result;
  Null targetUrl;
  bool? success;
  Null? error;
  bool? unAuthorizedRequest;
  bool? bAbp;

  CountryModul(
      {this.result,
        this.targetUrl,
        this.success,
        this.error,
        this.unAuthorizedRequest,
        this.bAbp});

  factory CountryModul.fromJson(Map<String, dynamic> json) {
    CountryModul countryModul=new CountryModul();
    if (json['result'] != null) {
      countryModul.result =  <Result>[];
      json['result'].forEach((v) {
        countryModul.result!.add(new Result.fromJson(v));
      });
    }
    countryModul.targetUrl = json['targetUrl'];
    countryModul.success = json['success'];
    countryModul.error = json['error'];
    countryModul.unAuthorizedRequest = json['unAuthorizedRequest'];
    countryModul.bAbp = json['__abp'];
    return countryModul ;
  }
  Future<Set<String>> getListofCountry()async{
    Crud _crud =new Crud() ;
    var response=await _crud.getrequest(linkGetAllCountry,{});
    CountryModul country= CountryModul.fromJson(response);
    Set<String> listOfCountry=new Set() ;
    for(int i=0;i<country.result!.length;i++){
      country.result!.forEach((country) {
        listOfCountry.add(country.name.toString());
      });

    }
    return listOfCountry ;
  }
   getMapSetofCountryAndCountryId()async{
    Crud _crud =new Crud() ;
    var response=await _crud.getrequest(linkGetAllCountry,{});
    CountryModul country= CountryModul.fromJson(response);
    Set<String> listOfCountry=new Set() ;
    Set<String> listOfCountryId=new Set() ;
    for(int i=0;i<country.result!.length;i++){
      country.result!.forEach((country) {
        listOfCountry.add(country.name.toString());
        listOfCountryId.add(country.id.toString());
      });

    }
     return {'country':listOfCountry,'countryId':listOfCountryId} ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    data['targetUrl'] = this.targetUrl;
    data['success'] = this.success;
    data['error'] = this.error;
    data['unAuthorizedRequest'] = this.unAuthorizedRequest;
    data['__abp'] = this.bAbp;
    return data;
  }
}




class Result {
  String? name;
  List<Cities?>? cities;
  int? id;

  Result({this.name, this.cities, this.id});

  factory Result.fromJson(Map<String, dynamic> json) {
    Result result=new Result() ;
    result.name = json['name'];
    if (json['cities'] != null) {
      result.cities = <Cities>[];
      json['cities'].forEach((v) {
        result.cities!.add(new Cities.fromJson(v));
      });
    }
    result.id = json['id'];
    return result ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.cities != null) {
      data['cities'] = this.cities!.map((v) => v!.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}

class Cities {
  int? countryId;
  String? countryName;
  String? name;
  int? id;

  Cities({this.countryId, this.countryName, this.name, this.id});

  Cities.fromJson(Map<String, dynamic> json) {
    countryId = json['countryId'];
    countryName = json['countryName'];
    name = json['name'];
    id = json['id'];
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