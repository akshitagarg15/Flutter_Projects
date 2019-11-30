import 'package:flutter/material.dart';
import 'dart:math';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background Changer'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=>_HomePageState();
}

class _HomePageState extends State<HomePage>{
  
  var colors=[
    Colors.amber,
    Colors.black,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.yellow,
  ];
  
  var currentColor=Colors.white;
  var btnColor=Colors.black;

  setRandomColor(){
    var rnd=Random().nextInt(colors.length);
    var brnd=Random().nextInt(colors.length);
    setState(() {
     currentColor=colors[rnd];
     btnColor=colors[brnd];
    });
  }
  
  @override
  Widget build(BuildContext context){
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: btnColor,
          padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 30.0),
          child: Text('Change It!',
            style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),
          ),
          onPressed: setRandomColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            ),
        ),
      
      ),

    );
  }
}