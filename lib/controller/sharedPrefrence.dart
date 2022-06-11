import 'package:shared_preferences/shared_preferences.dart';

import '../core/AppData.dart';

saveToken()async{
  SharedPreferences preferences=await SharedPreferences.getInstance() ;
  preferences.setString('Token', Token!) ;

}
getToken()async{
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  if(sharedPreferences.getString('Token')!=null)
  {Token=sharedPreferences.getString('Token') ;}
}
