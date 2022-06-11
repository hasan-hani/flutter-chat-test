import 'package:chatflutter/view/screen/homepage.dart';
import 'package:chatflutter/view/widget/allMessageScreen.dart';
import 'package:chatflutter/view/widget/imageWelcomeHomePage.dart';
import 'package:chatflutter/view/widget/findPartnerScreen.dart';

String? globalselectedCountry='Syria - سورية';
String? Token ;
int indexHomePage  =0 ;
List HomePageScreensWhitAllMessage = [
  ImageWelcomHomePage(),
  FindPartner(),
  AllMessageScreen()
];
String? selectedCountryid ;
String? selectedCityname='دمشق' ;
String? selectedCityid ;
String genderSelectedValue='1' ;