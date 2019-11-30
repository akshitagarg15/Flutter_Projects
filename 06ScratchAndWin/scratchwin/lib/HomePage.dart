import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{

  
      // TODO: import images
      AssetImage circle=AssetImage("images/circle.png");
      AssetImage lucky=AssetImage("images/rupee.png");
      AssetImage unlucky=AssetImage("images/sadFace.png");


      // TODO: get an array
      List<String> itemArray;
      int luckyNumber;

      // TODO: Initialise array with 25 elements
      @override
      void initState() {
        super.initState();
        itemArray=List<String>.generate(25, (index)=>"empty");
        generateRandomNumber();
      }
      generateRandomNumber(){
        int random=Random().nextInt(25);
        print(random);
        setState(() {
         luckyNumber=random; 
        });
      }

      // TODO: define getimage method
      AssetImage getImage(int index){
        String currentState=itemArray[index];
        switch (currentState) {
          case 'lucky' :
            return lucky;
            break;
          case 'unlucky' :
            return unlucky;
            break;
          case 'lucky' :
            return lucky;
            break;
        }
        return circle;
      }

      // TODO: play game method on a random no we will place rupee symbol
      playGame(int index){
        if(luckyNumber==index){
          setState(() {
           itemArray[index]="lucky" ;
          });
        }else{
          setState(() {
           itemArray[index]="unlucky"; 
          });
        }
      }

      // TODO:Show all
      ShowAll(){
        setState(() {
         itemArray=List<String>.filled(25,"unlucky");
         itemArray[luckyNumber]="lucky"; 
        });
      }

      // TODO: Reset all
      resetGame(){
        setState(() {
         itemArray=List<String>.filled(25, "empty"); 
        });
        generateRandomNumber();
      }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar=AppBar(
        title:Text("Scratch and Win")
      ),

    );
  }
}