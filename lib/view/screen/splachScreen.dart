import 'package:chatflutter/controller/sharedPrefrence.dart';
import 'package:chatflutter/view/screen/loginScreen.dart';
import 'package:chatflutter/view/widget/customContainerBackgroundImage.dart';
import 'package:flutter/material.dart';

class SpachScreen extends StatefulWidget {
  @override
  State<SpachScreen> createState() => _SpachScreenState();
}

class _SpachScreenState extends State<SpachScreen> {
  @override
  void initState() {
    getToken() ;
    Future.delayed(
        Duration(seconds: 3),
            (){
          Navigator.of(context).pushReplacementNamed(LoginScreen.id) ;
            }
    ) ;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainerBackGroundImage(Text('welcome',style: Theme.of(context).textTheme.headline1,)),
    );
  }
  
}
