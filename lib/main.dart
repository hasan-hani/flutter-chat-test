
import 'package:chatflutter/core/apiLink.dart';
import 'package:chatflutter/data/apiData/crud.dart';
import 'package:chatflutter/view/screen/choosLoginSignupScreen.dart';
import 'package:chatflutter/view/screen/homePageWithDailgChat.dart';
import 'package:chatflutter/view/screen/homePageWithFindPartnerSearchResult.dart';
import 'package:chatflutter/view/screen/homepage.dart';
import 'package:chatflutter/view/screen/loginScreen.dart';
import 'package:chatflutter/view/screen/signInScreen.dart';
import 'package:chatflutter/view/screen/signupScreen.dart';
import 'package:chatflutter/view/widget/customDropDownButton.dart';
import 'package:chatflutter/view/widget/listOfCountryDropDown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/provider/listofcityProvider.dart';
import 'controller/provider/termanldRembm.dart';
import 'view/screen/splachScreen.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => CustomDropWownButton(),),
            ChangeNotifierProvider(create: (context) => TermandRemamber(),),
            ChangeNotifierProvider(create: (context) =>ListOfCityProvider() ,),
            ChangeNotifierProvider(create: (context) => ListOfCountryProvider(),),
            ChangeNotifierProvider(create: (context) => ListOfCityAndCountryProvider()),
          ],
          child: const MyApp()),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat',
      theme: ThemeData(
        //primarySwatch: Colors.orange,
        primaryColor: Colors.deepOrangeAccent,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.black,
            fontSize: 26 ,
            fontWeight: FontWeight.bold,

          )
        ),
        elevatedButtonTheme:ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
            backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent)
        ),)
        //elevatedButtonTheme:ElevatedButtonTheme(child: null,)
      ),
      home: LoginScreen(),
      routes: {
        LoginScreen.id:(context)=>LoginScreen(),
        SignUpScreen.id:(context)=>SignUpScreen(),
        ChoosLoginSignupScreen.id:(context)=>ChoosLoginSignupScreen(),
        SignInScreen.id:(context)=>SignInScreen(),
        HomePage.id:(context)=>HomePage(),
        HomePageWithDialogChat.id:(context)=>HomePageWithDialogChat(),
        HomePageWithPartnerSearchResult.id:(context)=>HomePageWithPartnerSearchResult()
      },
    );
  }
}



