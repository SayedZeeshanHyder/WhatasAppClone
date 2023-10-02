import 'package:flutter/material.dart';

final lighththeme = ThemeData.light(useMaterial3: true).copyWith(
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(displayLarge: TextStyle(fontSize: 30),displayMedium: TextStyle(fontSize: 23),displaySmall: TextStyle(fontSize: 18)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade800),
    ),
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
        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
);

final darktheme = ThemeData.dark(useMaterial3: true).copyWith(
  textTheme: const TextTheme(displayLarge: TextStyle(fontSize: 30),displayMedium: TextStyle(fontSize: 23),displaySmall: TextStyle(fontSize: 18)),
  appBarTheme: AppBarTheme(
    actionsIconTheme: IconThemeData(
        color: Colors.black
    ),
    color: Colors.green.shade800,
    titleTextStyle:
    TextStyle(fontWeight: FontWeight.bold, fontSize: 27),),
  useMaterial3: true,
  tabBarTheme: TabBarTheme(
    labelPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    indicatorColor: Colors.black,
    labelColor: Colors.black,
    unselectedLabelColor: Colors.black,
    labelStyle:
    TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
);