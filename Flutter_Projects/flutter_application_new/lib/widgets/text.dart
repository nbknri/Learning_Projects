import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: AppBar(
        //Text
        title: Text("Learn Flutter"),
        centerTitle: true,
        //BG Color
        backgroundColor: Colors.green,

        //Leading
        leading: Icon(Icons.home),

        //Actions
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],

        //Shape
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),

        //Elevation
        elevation: 20
      ),
      body: Center(
        child: Text("Learn Flutter",
        style: TextStyle(
          fontSize: 40,
          color: Colors.green,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          letterSpacing: 1,
          wordSpacing: 20,
          backgroundColor: Colors.yellow,
          shadows: [
            Shadow(
              color: Colors.black,
              offset: Offset(5, 15),
              blurRadius: 5,
            )
          ]
        ),
        ),
      )
      );
  }
}
