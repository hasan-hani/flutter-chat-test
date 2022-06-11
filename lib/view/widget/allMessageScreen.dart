import 'package:chatflutter/core/AppData.dart';
import 'package:chatflutter/core/apiLink.dart';
import 'package:chatflutter/data/apiData/crud.dart';
import 'package:chatflutter/data/module/chat.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter_svg/svg.dart';

import 'messageListTile.dart';
class AllMessageScreen extends StatefulWidget {
  const AllMessageScreen({Key? key}) : super(key: key);

  @override
  State<AllMessageScreen> createState() => _AllMessageScreenState();
}

class _AllMessageScreenState extends State<AllMessageScreen> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getMeassageing(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: (snapshot.data! as List).length ,
          itemBuilder: (context, index) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return CircularProgressIndicator();
            }
            return MessageListTile(chat: Chat.fromJson((snapshot.data! as List)[index]));

          },);


      },
    );
  }
  Future<List<Map<String, dynamic>>> _getMeassageing()async{
    Crud _crud=new Crud() ;
    var response=await _crud.getrequest(linkGetAllChat,  {
      'Accept':'application/json',
      'Authorization':'Beatr $Token'
    });
    if(response==null) {
      response= await
      [
      {
        "id": "string",
        "accountId": 1,
        "fullName": "string",
        "contactId": 1,
        "lastMessage": "string",
        "lastMessageTime": "2021-10-06T13:29:30.999Z",
        "dialogs": [
          {
            "id": 0,
            "who": 0,
            "message": "hi and how are you",
            "chatid": "string",
            "time": "2021-10-06T13:29:30.999Z",
          },
          {
            "id": 0,
            "who": 1,
            "message": "no thanks",
            "chatid": "string",
            "time": "2021-10-07T13:29:30.999Z",
          },
          {
            "id": 0,
            "who": 1,
            "message": "where are you",
            "chatid": "string",
            "time": "2021-10-06T13:29:30.999Z",
          }
        ]
      },
      {
        "id": "string",
        "accountId": 1,
        "fullName": "string",
        "contactId": 1,
        "lastMessage": "string",
        "lastMessageTime": "2020-12-06T13:29:30.999Z",
        "dialogs": [
          {
            "id": 1,
            "who": 1,
            "message": "string",
            "chatid": "string",
            "time": "2021-10-06T13:29:30.999Z",
          }
        ]
      },
      {
        "id": "string",
        "accountId": 0,
        "fullName": "string",
        "contactId": 0,
        "lastMessage": "string",
        "lastMessageTime": "2021-10-06T13:29:30.999Z",
        "dialogs": [
          {
            "id": 0,
            "who": 0,
            "message": "string",
            "chatid": "string",
            "time": "2021-10-06T13:29:30.999Z",
          }
        ]
      },
      {
        "id": "string",
        "accountId": 0,
        "fullName": "string",
        "contactId": 0,
        "lastMessage": "string",
        "lastMessageTime": "2021-10-06T13:29:30.999Z",
        "dialogs": [
          {
            "id": 0,
            "who": 0,
            "message": "string",
            "chatid": "string",
            "time": "2021-10-06T13:29:30.999Z",
          }
        ]
      },
    ]
      ;}
    return response ;


  }
}