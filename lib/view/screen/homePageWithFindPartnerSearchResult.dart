import 'package:chatflutter/core/apiLink.dart';
import 'package:chatflutter/data/apiData/crud.dart';
import 'package:chatflutter/data/module/partner.dart';
import 'package:chatflutter/view/widget/allMessageScreen.dart';
import 'package:chatflutter/view/widget/findPartnerScreen.dart';
import 'package:chatflutter/view/widget/findeparentsitem.dart';
import 'package:chatflutter/view/widget/homepageWidget.dart';
import 'package:chatflutter/view/widget/imageWelcomeHomePage.dart';
import 'package:flutter/material.dart';
class HomePageWithPartnerSearchResult extends StatefulWidget {
  static String id='HomePageWithPartnerIteme';

  @override
  State<HomePageWithPartnerSearchResult> createState() => _HomePageWithPartnerSearchResultState();
}

class _HomePageWithPartnerSearchResultState extends State<HomePageWithPartnerSearchResult> {
  Future<List> findparent()async{
    Crud _crud=new Crud() ;
    var response=await [
        {
          "id": 0,
          "prtnerId": 0,
          "cityId": 0,
          "age": 0,
          "gender": 0,
          "date": "2022-06-01T10:33:50.427Z",
          "userName": "string",
          "cityName": "string"
        },
        {
          "id": 0,
          "prtnerId": 0,
          "cityId": 0,
          "age": 0,
          "gender": 0,
          "date": "2022-06-01T10:33:50.427Z",
          "userName": "string",
          "cityName": "string"
        }
      ];

    return response ;
  }
  @override
  Widget build(BuildContext context) {
    Partner partner ;
    findpartnersearchresult(){
      return FutureBuilder(
        future: findparent(),
          builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return CircularProgressIndicator();
          }
          return ListView.builder(
            itemCount: (snapshot.data as List).length,
              itemBuilder: (context, index) {
                return FindParentsItem(partner: Partner.fromJson((snapshot.data as List)[index]));
              },);
          },
      ) ;

    }
    List HomePageScreensWhitFindPartner = [
      ImageWelcomHomePage(),
      findpartnersearchresult(),
      AllMessageScreen()
    ];
    return HomePageWidget(HomePageScreens: HomePageScreensWhitFindPartner);
  }
}
