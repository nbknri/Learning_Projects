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
        elevation: 20,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              style: ButtonStyle(
                textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 30)),
                foregroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              onPressed: () {
                debugPrint('Text Button Clicked');
              },
              child: Text('Text Button'),
            ),
            TextButton.icon(
              style: ButtonStyle(
                textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 30)),
                foregroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              onPressed: () {
                debugPrint('Icon Button Clicked');
              },
              onLongPress: () {
                debugPrint('Icon Button Long Pressed');
              },
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                )),
                padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                foregroundColor: WidgetStateProperty.all(Colors.amber),
                backgroundColor: WidgetStateProperty.all(Colors.purple),
                minimumSize: WidgetStateProperty.all(Size(200, 40)),
                textStyle: WidgetStateProperty.all(TextStyle(fontSize: 20)),
              ),
              onPressed: () {
                debugPrint('Elevated Button Clicked');
              },
              child: Text('Sign In'),
            ),

            OutlinedButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                    )
                ),
                side: WidgetStateProperty.all(
                  BorderSide(
                    color: Colors.yellow,
                    width: 5,
                  )
                ),
                textStyle: WidgetStateProperty.all(TextStyle(fontSize: 20)),
                minimumSize: WidgetStateProperty.all(Size(200, 50)),
                foregroundColor: WidgetStateProperty.all(Colors.black),
              ),
              onPressed: () {
                debugPrint('Outline Button Pressed');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
