import 'package:flutter/material.dart';

CustomContainerBackGroundImage(Widget child){
  return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
          image: DecorationImage(
              image: AssetImage('images/Png/bg.png',)

          )
      ),
      child:Center(
          child:child
      )
  );
}