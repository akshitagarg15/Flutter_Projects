import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home:MyButton(),
  ));
}

class MyButton extends StatefulWidget{
  @override
  MyButtonState createState(){
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton>{
  // noSuchMethod(Invocation i) => super.noSuchMethod(i);
  int counter=0;
  List<String> spanishNumbers=[
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz"
  ];

  List<String> englishNumbers=[
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
  ];

  String defaultText="Spanish Numbers";

  String defaultEngText="English Numbers";

  void dispalySNumbers(){
    setState(() {
     defaultText= spanishNumbers[counter];
     defaultEngText=englishNumbers[counter]; 
     if(counter<9){
       counter=counter+1;
     }else{
       counter=0;
     }
    });

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        title: Text("My Stateful App"),
        backgroundColor: Colors.orange,
        
        

      ),
      body: Container(
        child: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Spanish Number",style:TextStyle(color: Colors.grey,fontSize: 20.0)),
              Text(defaultText,style: TextStyle(fontSize: 30.0)),
              Text("English Number",style:TextStyle(color: Colors.grey,fontSize: 20.0)),

              Text(defaultEngText,style: TextStyle(fontSize: 30.0)),

              Padding(padding: EdgeInsets.all(10.0),),
              RaisedButton(   
                child: Text('call numbers',style: TextStyle(
                  color: Colors.white
                  ),),
                onPressed: dispalySNumbers,
                color: Colors.orange,
              )

            ],
          ),
        ),
      ),
    );
  }
}