
import 'package:chatflutter/data/module/chat.dart';
import 'package:chatflutter/view/screen/homePageWithDailgChat.dart';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http ;
class MessageListTile extends StatelessWidget {
  final Chat chat ;
  const MessageListTile({required this.chat}) ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(HomePageWithDialogChat.id,arguments: chat);
      },
      leading: CircleAvatar(radius: 20,),
      title: Text(chat.fullName.toString()),
      subtitle: Text(chat.lastMessage.toString()),
      trailing: Text(chat.lastMessageTime.toString().substring(0,10).replaceAll('-', '/')),
    );
  }

}
