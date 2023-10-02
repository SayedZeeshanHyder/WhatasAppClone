import 'package:flutter/material.dart';

class Community extends StatelessWidget{
  Widget build(BuildContext context){
    return ListView.builder(itemCount: 5,itemBuilder: (context,index){
      return ListTile(
        leading: Container(width: 30,height: 30,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),),
        title: Text("Title"),
        subtitle: Text("Subtitle"),
      );
    });
  }
}