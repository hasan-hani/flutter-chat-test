import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chatflutter/controller/provider/termanldRembm.dart';
import 'package:chatflutter/controller/sharedPrefrence.dart';
import 'package:chatflutter/core/apiLink.dart';
import 'package:chatflutter/data/apiData/crud.dart';
import 'package:chatflutter/view/screen/homepage.dart';
import 'package:chatflutter/view/screen/signupScreen.dart';
import 'package:chatflutter/view/widget/customContainerBackgroundImage.dart';
import 'package:chatflutter/view/widget/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/AppData.dart';

class LoginScreen extends StatefulWidget {
  static String id='LoginScreen' ;
  bool ischecked=false ;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailControl =new TextEditingController() ;
  TextEditingController passwordControl=new TextEditingController() ;
  TermandRemamber? provider ;
  @override
  Widget build(BuildContext context) {
    provider=Provider.of<TermandRemamber>(context) ;
    return Scaffold(
      body:  Center(
            child:CustomContainerBackGroundImage(
              Column(
                children: [
                  _logintextwidget() ,
                  _columnemailpassord()     ,
                  Expanded(
                    child:(provider!.returnCheck(context,'Remember me'))[0], ),
                  _loginButton(),
                  _dontHaveAccount()
                ],
              )
            )
        ),

    );
  }

  _logintextwidget(){
    return Expanded(
        child: Center(
          child: Text('Login',style:Theme.of(context).textTheme.headline1 ),
        )
    );
  }

  _columnemailpassord(){
    return Column(
      children: [
        CustomTextFiel(
            hint: 'Email', icon: Icons.email,
            mycontroller: emailControl,
            vaild: (val ) {  },
        ),
        CustomTextFiel(
            hint: 'password', icon: Icons.vpn_key_outlined,
            mycontroller: passwordControl,
            vaild: (val ) {  },
        ),
      ],
    ) ;
  }
  _loginButton(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: (
      ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style,
        onPressed: () {
          _login() ;
        }, child: Text('Login'),

      )
      ),
    );
  }
  _dontHaveAccount(){
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(thickness: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('Dont have an account '),
              InkWell(
                  onTap:_CreateAccount ,
                  child: Text(' Creat Account',style:TextStyle(color: Theme.of(context).primaryColor)))
            ]
          )
        ],
      ),
    );
  }
  _CreateAccount(){
    Navigator.of(context).pushReplacementNamed(SignUpScreen.id);
  }
  _login()async{
    Crud _crud=new Crud() ;
    var response=await _crud.postrequest(linkLogin, {
      "userNameOrEmailAddress": emailControl.text,
      "password": passwordControl.text,
      "rememberClient": true
    }, {}) ;
    if(response['accessToken']!=null){
      Token=response['accessToken'] ;
      saveToken() ;

    }
    else AwesomeDialog(
        context: context,
        title:'Wrong Email or password'
    );
    Navigator.of(context).pushReplacementNamed(HomePage.id);
  }

}
