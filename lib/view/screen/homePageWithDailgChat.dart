import 'package:chatflutter/data/module/chat.dart';
import 'package:chatflutter/view/widget/allMessageScreen.dart';
import 'package:chatflutter/view/widget/dialogMessage.dart';
import 'package:chatflutter/view/widget/homepageWidget.dart';
import 'package:chatflutter/view/widget/imageWelcomeHomePage.dart';
import 'package:chatflutter/view/widget/findPartnerScreen.dart';
import 'package:flutter/material.dart';

class HomePageWithDialogChat extends StatefulWidget {
  static String id='HomePageWithDialogChat';

  @override
  State<HomePageWithDialogChat> createState() => _HomePageWithDialogChatState();
}

class _HomePageWithDialogChatState extends State<HomePageWithDialogChat> {


  @override
  Widget build(BuildContext context) {
    Chat chat = ModalRoute.of(context)!.settings.arguments as Chat ;
    DialogScreen(){
      return DialogMessage(chat:chat) ;
    }
    List HomePageScreensWhitDailog = [
      ImageWelcomHomePage(),
      FindPartner(),
      DialogScreen(),

    ];
    return HomePageWidget(HomePageScreens: HomePageScreensWhitDailog);
  }
}
