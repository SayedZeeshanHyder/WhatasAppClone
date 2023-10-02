import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Recent",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        Expanded(
          child: ListView.builder(itemCount: 5,itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(),
              title: Text("Title"),
              subtitle: Text(DateTime.now().toString()),
              trailing: Icon(Icons.phone),
            );
          }),
        ),
      ],
    );
  }
}