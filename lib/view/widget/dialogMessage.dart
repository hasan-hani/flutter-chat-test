import 'package:chatflutter/data/module/chat.dart';
import 'package:flutter/material.dart';
class DialogMessage extends StatelessWidget {
  final Chat chat ;
  DialogMessage({required this.chat}) ;
  @override
  Widget build(BuildContext context) {
    return Card(
      child:ListView.builder(
        itemCount: chat.dialogs!.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(chat.dialogs![index].time.toString().substring(0,10).replaceAll('-', '/'),style: TextStyle(color: Colors.grey),),
              ),
              Align(child:Text(chat.dialogs![index].message.toString()),alignment: chat.dialogs![index].who.toString()=='1'?Alignment.centerLeft:Alignment.centerRight,),
            ],
          );
        },
      ) ,
    );
  }
}
