import 'package:flutter/material.dart';
import 'HomePage.dart';

// update pubsec yaml file for image assets first

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice roller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0XFFF3B431),
      ),
      home: HomePage(),
      
    );
  }
}