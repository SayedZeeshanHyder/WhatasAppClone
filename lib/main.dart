import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            actionsIconTheme: IconThemeData(
              color: Colors.white
            ),
              color: Colors.green.shade800,
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 27),),
          useMaterial3: true,
          tabBarTheme: TabBarTheme(
              labelPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
      home: HomePage(),
    );
  }
}
