import 'package:flutter/material.dart';


void main(){

  
  
  runApp(Myapp());
}


class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
    title:'Flutter',
    debugShowCheckedModeBanner:false,
    // theme: ThemeData.dark(), to get a dark theme
    theme: ThemeData(
      primaryColor: Colors.green,
      accentColor: Colors.orange,
      ),

    home:Scaffold(
      appBar: AppBar(
        title:Text('Flutter'),
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("I am line one"),
            Text("I am line inS two"),
            RaisedButton(
              onPressed: (){},
              child: Text("SignUp"),
              color: Colors.orange,
              splashColor: Colors.blue,
            )
          ],
        ),
      
        

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add_a_photo,
          color: Colors.black,

        ),
      ),
    )
  );
  }
 }