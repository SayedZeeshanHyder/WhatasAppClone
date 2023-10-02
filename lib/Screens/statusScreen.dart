import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Status",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Icon(Icons.add,weight: 20,),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(itemCount: 5,itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(),
              title: Text("Title"),
              subtitle: Text("Subtitle"),
            );
          }),
        ),
      ],
    );
  }

}