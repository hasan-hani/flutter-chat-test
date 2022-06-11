import 'package:flutter/material.dart';

class TermandRemamber extends ChangeNotifier{
  bool isChecked =false ;
  bool isPinkColor=false ;
  TermandRemamber() ;





  returnCheck(BuildContext context,String text){
    return [Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          activeColor: Theme.of(context).primaryColor ,
          checkColor: Colors.white,
          value:isChecked ,
          onChanged: (value) {
            isChecked=value! ;
            isPinkColor=!isPinkColor ;
            notifyListeners() ;
          },
        ),
        Text(text,style: TextStyle(color: isPinkColor? Theme.of(context).primaryColor:Colors.black),)
      ],
    ),isChecked];
  }
}