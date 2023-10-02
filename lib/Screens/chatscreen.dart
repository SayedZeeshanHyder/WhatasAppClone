import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 5,itemBuilder: (context,index){
      return ListTile(
        leading: CircleAvatar(),
        title: Text("Title"),
        subtitle: Text("Subtitle"),
        trailing: CircleAvatar(),
      );
    });
  }

}