import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() =>runApp(MyApp());




class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Tic Tac Toe Game",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor==primarySwatch[500]
        // primarywatch is actual color while primaryColor is shade of this material
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    
    );
  }
}