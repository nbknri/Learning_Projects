import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var dspText = 'Hello World';
  var downColor = Colors.black;
  var upColor = Colors.black;

  void changeText() {
    setState(() {
      dspText = "Good Mornig";
    });
  }

  void changeTextHello() {
    setState(() {
      dspText = "Hello World";
    });
  }

  void iconColorChange(String iconPress) {
    setState(() {
      if (iconPress == "up") {
        downColor = Colors.black;
        if (upColor == Colors.blue){
          upColor = Colors.black;
        }else{
          upColor = Colors.blue;
        }
      } else if ((iconPress == "down")) {
        upColor = Colors.black;
        if (downColor == Colors.red){
          downColor = Colors.black;
        }else{
          downColor = Colors.red;
        }
      }
    });
  }

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(dspText, style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                changeText();
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                minimumSize: WidgetStatePropertyAll(Size(200, 40)),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              child: Text("Good Morning", style: TextStyle(fontSize: 20)),
            ),

            ElevatedButton(
              onPressed: () {
                changeTextHello();
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                minimumSize: WidgetStatePropertyAll(Size(200, 40)),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              child: Text("Hello World", style: TextStyle(fontSize: 20)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    iconColorChange('up');
                  },
                  icon: Icon(Icons.thumb_up),
                  iconSize: 40,
                  color: upColor,
                ),
                IconButton(
                  onPressed: () {
                    iconColorChange('down');
                  },
                  icon: Icon(Icons.thumb_down),
                  iconSize: 40,
                  color: downColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
