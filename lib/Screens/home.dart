import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Community.dart';
import 'package:whatsapp/Screens/callscreen.dart';
import 'package:whatsapp/Screens/chatscreen.dart';
import 'package:whatsapp/Screens/statusScreen.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              padding: EdgeInsets.zero,
              tabs: [
                Container(
                  width: 20,
                  alignment: Alignment.center,
                  child: Icon(Icons.groups),
                ),
                Container(
                  width: 70,
                  alignment: Alignment.center,
                  child: Text("Chats"),
                ),
                Container(
                  width: 70,
                  alignment: Alignment.center,
                  child: Text("Updates"),
                ),
                Container(
                  width: 70,
                  alignment: Alignment.center,
                  child: Text("Calls"),
                ),
              ],
            ),
            title: Text("WhatsApp"),
            actions: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 12,),
              Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context)=>
                [
                  PopupMenuItem(value: 1,child: Text("New Group"),),
                  PopupMenuItem(value: 2,child: Text("New Broadcase"),),
                  PopupMenuItem(value: 3,child: Text("Linked Devices"),),
                  PopupMenuItem(value: 4,child: Text("Starred messages"),),
                  PopupMenuItem(value: 5,child: Text("Payments"),),
                  PopupMenuItem(value: 6,child: Text("Settings"),),
                ],
                onSelected: (value){
                  print(value.toString());
                },
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Community(),
              ChatScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}