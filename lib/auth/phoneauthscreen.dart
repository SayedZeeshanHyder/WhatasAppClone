import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneAuthScreen extends StatelessWidget{

  final phonenumbercontroller = TextEditingController();
  final codecontroller = TextEditingController();
  final countrynamecontroller = TextEditingController();
  final focusnode= FocusNode();

  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Enter Phone Number",style: Theme.of(context).textTheme.displayMedium,),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text("WhatsApp will send you an SMS message to Verify your"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Phone Number."),
              Text("What's My Number?",style: TextStyle(color: Colors.blue),),
            ],
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 50,
            width: 200,
            child: TextField(
                onTap: (){
                  focusnode.unfocus();
                  showCountryPicker(
                    showSearch: true,
                    context: context,
                    showPhoneCode: true, // optional. Shows phone code before the country name.
                    onSelect: (Country country) {
                      countrynamecontroller.text=country.name;
                      codecontroller.text=country.phoneCode;
                    },
                  );
                },
              onTapOutside: (val){
                focusnode.unfocus();
              },
              showCursor: false,
              readOnly: true,
              focusNode: focusnode,
              controller: countrynamecontroller,
              decoration: InputDecoration(
                hintText: "Select Country",
                suffixIcon: Icon(Icons.arrow_drop_down),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                  width: 50,
                  child: TextField(
                    readOnly: true,
                    controller: codecontroller,
                    decoration: InputDecoration(
                      prefixText: "+",
                    ),
                  ),
              ),
              SizedBox(width: 10,),
              SizedBox(
                height: 50,
                width: 170,
                child: TextFormField(
                  controller: phonenumbercontroller,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width-40,
        child: FloatingActionButton(
          backgroundColor: Colors.green.shade800,
          child: Text("Next"),
          onPressed: (){
            Get.snackbar("Snackbar","App Build In Progress",dismissDirection: DismissDirection.horizontal,snackPosition: SnackPosition.BOTTOM);
          },
        ),
      ),
    );
  }
}