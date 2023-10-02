import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/auth/phoneauthscreen.dart';

class FirstPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex:1,
            child: Container(
              alignment: Alignment.center,
              child: Text("Welcome to Whatsapp",style: Theme.of(context).textTheme.displayLarge,),
            ),
          ),
          Expanded(
            flex: 3,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(200)
                ),
              ),
          ),
          Expanded(
          flex: 2,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Read Our Privacy Policy . Tap \" Agree to Continue \" to accept the terms of service.",maxLines: 2,textAlign: TextAlign.center,),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      Get.off(PhoneAuthScreen());
                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      alignment: Alignment.center,
                      child: Text("Agree and Continue"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}