import 'package:clone_app/view/sections/firstScreenScetion/firstScreen.dart';
import 'package:clone_app/view/sections/homeScreenSection/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      // home: Firstscreen(),
      home: HomePage1(),
    );
  }
}