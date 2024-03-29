import 'package:dice_roller/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one=AssetImage("images/one.png");
  AssetImage two=AssetImage("images/two.png");
  AssetImage three=AssetImage("images/three.png");
  AssetImage four=AssetImage("images/four.png");
  AssetImage five=AssetImage("images/five.png");
  AssetImage six=AssetImage("images/six.png");

  AssetImage diceImage;
  AssetImage diceImage2;


  @override
  void initState(){
    super.initState();
    setState(() {
     diceImage=one;
     diceImage2=six; 
    });
  }

  void  rollDice(){
    int random=(1+Random().nextInt(6));
    int random2=(1+Random().nextInt(6));
    AssetImage newImage;
    AssetImage newImage2;

    switch (random) {
      case 1:
        newImage=one;
        break;
      case 2:
        newImage=two;
        break;
      case 3:
        newImage=three;
        break;
      case 4:
        newImage=four;
        break;
      case 5:
        newImage=five;
        break;
      case 6:
        newImage=six;
        break;
     
    }

    switch (random2) {
      case 1:
        newImage2=one;
        break;
      case 2:
        newImage2=two;
        break;
      case 3:
        newImage2=three;
        break;
      case 4:
        newImage2=four;
        break;
      case 5:
        newImage2=five;
        break;
      case 6:
        newImage2=six;
        break;
     
    }

    setState(() {
     diceImage=newImage;
     diceImage2=newImage2; 
    });
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Dice Roller") 
        ),
        body: Container(
          
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
              Image(
                image: diceImage,
                width: 150.0,
                height: 150.0,
              ),
              
              Image(
                image: diceImage2,
                width: 150.0,
                height: 150.0,

              ),
              Container(
                margin: EdgeInsets.only(top:100.0),
                child: RaisedButton(
                  color: Color(0XFFF3B431),
                  padding: EdgeInsets.fromLTRB(40.0, 25.0, 40.0, 25.0),
                  child: Text("Roll the dice",style: TextStyle(fontSize: 20.0),),
                  splashColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: rollDice,
                  

                )
              )
              ],
            ),
          ),
        ),
    );
  }
}