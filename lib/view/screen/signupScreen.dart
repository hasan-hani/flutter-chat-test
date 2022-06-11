import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chatflutter/controller/provider/listofcityProvider.dart';
import 'package:chatflutter/controller/provider/termanldRembm.dart';
import 'package:chatflutter/core/AppData.dart';
import 'package:chatflutter/core/apiLink.dart';
import 'package:chatflutter/data/apiData/crud.dart';
import 'package:chatflutter/view/screen/loginScreen.dart';
import 'package:chatflutter/view/screen/signInScreen.dart';
import 'package:chatflutter/view/widget/customContainerBackgroundImage.dart';
import 'package:chatflutter/view/widget/customDropDownButton.dart';
import 'package:chatflutter/view/widget/customTextField.dart';
import 'package:chatflutter/view/widget/listOfCountryDropDown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart' ;
class SignUpScreen extends StatefulWidget {
  static String id='SignUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> _globalKey=new GlobalKey<FormState>() ;
  TermandRemamber? provider ;
  TextEditingController emailControl     =new TextEditingController();
  TextEditingController passwordControl  =new TextEditingController();
  TextEditingController reenterControl   =new TextEditingController();
  TextEditingController nameControl      =new TextEditingController();
  TextEditingController ageControl       =new TextEditingController();
  TextEditingController phoneControl     =new TextEditingController();
  String? genderSelectedValue ;
  bool isvalid=false ;
  @override
  Widget build(BuildContext context) {
    ListOfCityProvider listOfCityProvider=Provider.of<ListOfCityProvider>(context) ;
    double _screenHieght                 =MediaQuery.of(context).size.height ;
    double _screenwidth                  =MediaQuery.of(context).size.width ;
    provider=Provider.of<TermandRemamber>(context) ;
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: ListView(
          children: [
            _signupText(),
            _imageicon(_screenHieght/12,_screenwidth/4),
            //apiCity.getDropDownCity(),
            CustomTextFiel(hint: 'name', icon: Icons.person, mycontroller: nameControl,vaild:(p0) {

            },),
            CustomTextFiel(hint: 'age', icon: Icons.person, mycontroller: ageControl,vaild: (val ) {  },),
            genderDropDownButton(),
            GetListOfCountry(),//get dropdown depends on country
            ApiDropDownButton(),//get dropdown country depends on city
            CustomTextFiel(hint: 'phone', icon: Icons.person, mycontroller: phoneControl,vaild: (val ) {  },),
            CustomTextFiel(hint: 'Email', icon: Icons.email, mycontroller: emailControl,vaild: (val ) {  },),
            CustomTextFiel(hint: 'Password', icon: Icons.vpn_key_rounded, mycontroller: passwordControl,vaild: (val ) {  },),
            CustomTextFiel(hint: 'Reenter password', icon: Icons.vpn_key_rounded,mycontroller : reenterControl,vaild: (val ) {  },),
            provider!.returnCheck(context,'Accepted The Therm')[0],
            ElevatedButton(
              style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () {
              _SignUp();
            }, child: Text('SignUP')),
            _HaveAccount(),

          ],
        ),
      )

    );
  }
  _signupText(){
    return Center(
      child:Text('SignUp',style:Theme.of(context).textTheme.headline1),
    );
  }
  _imageicon(double imagehieght,double imagewidth){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              border: Border.all()
            ),width: 60,height: 60 ,),
             Positioned(child: SvgPicture.asset('images/Svg/image.svg',width: 30,height: 30,),bottom: 15,right: 15,),
          ],
        ),
        Icon(Icons.open_in_new_sharp),
      ],
    );
  }

  _SignUp()async{
    if(provider!.returnCheck(context,'Accepted The Therm')[1]) {
      Crud _crude = new Crud();
      var response = await _crude.postrequest(
          linkregister,
          {
            "name": nameControl.text,
            "gender": genderSelectedValue,
            "age": ageControl.text,
            "cityId":selectedCityname,
            "countryId": globalselectedCountry,
            "phoneNumber": phoneControl.text,
            "emailAddress": emailControl.text,
            "password": emailControl.text,
            "avatar": "hasan123"
          },{}
      );
      print(response['result']);
      if (response['result']['canLogin'] == true) {
        Navigator.of(context).pushReplacementNamed(SignInScreen.id);
      }
    }else{
      AwesomeDialog(context: context,title: 'faild to Signup').show();
    }
  }
  _HaveAccount(){
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(thickness: 2,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Already have an account?'),
                InkWell(
                    onTap:_GotoLoginPage ,
                    child: Text('Login',style:TextStyle(color: Theme.of(context).primaryColor)))
              ]
          )
        ],
      ),
    );
  }
  _GotoLoginPage(){
    Navigator.of(context).pushReplacementNamed(LoginScreen.id);
  }
}


class ApiDropDownButton extends StatefulWidget {
  @override
  State<ApiDropDownButton> createState() => _ApiDropDownButtonState();
}

class _ApiDropDownButtonState extends State<ApiDropDownButton> {
  CustomDropWownButton? DropDownProvider ;

  String? hint='city' ;

  @override
  Widget build(BuildContext context) {

    DropDownProvider  = Provider.of<CustomDropWownButton>(context);
    DropDownProvider!.hint=hint ;
     listOfCityProvider =
    Provider.of<ListOfCityProvider>(context) ;
    if(listOfCityProvider!.state==ListScreenState.initail){
      if(globalselectedCountry!=null){
        listOfCityProvider!.getListOfCitydependOnCountry() ;
      }



      return Center(child: Container(height: 50,width: 2*MediaQuery.of(context).size.width/3, decoration: BoxDecoration(border: Border.all(),),child: Text('city')));
    }else{
      DropDownProvider!.items=listOfCityProvider!.
      listOfCitiesModules!.map((e) => e.name).cast<String>().toList() ;
    }

    return  Center(child: DropDownProvider!.CustomD(context));
  }
}

ListOfCityProvider? listOfCityProvider ;

class genderDropDownButton extends StatefulWidget {
  const genderDropDownButton({Key? key}) : super(key: key);

  @override
  State<genderDropDownButton> createState() => _genderDropDownButtonState();
}

class _genderDropDownButtonState extends State<genderDropDownButton> {
  String? genderselectedValue ;
  bool isVaild=false ;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 2 * MediaQuery.of(context).size.width / 3,
              child: DropdownButtonFormField(
                hint: Text('gender'),
                items: ['male','female']
                    .map((item) => DropdownMenuItem(
                  child: Text(item),
                  value: item,
                ))
                    .toList(),
                value: genderselectedValue,
                onChanged: (item) {
                  setState(() {
                    isVaild = true;
                    genderselectedValue = item.toString();
                    genderSelectedValue=genderselectedValue=='male'? '1':'2' ;

                  });
                },
              ),
            ),
            if (isVaild)
              (Icon(
                Icons.check,
                color: Theme.of(context).primaryColor,
              ))
          ],
        ),
      ),
    );
  }
}
