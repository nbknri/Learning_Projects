import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int indexNum = 0;
  List tabWidgets = [
    Text('Home', style: TextStyle(fontSize: 40)),
    Text('Profine', style: TextStyle(fontSize: 40)),
    Text('Dashboard', style: TextStyle(fontSize: 40)),
    Text('Settings', style: TextStyle(fontSize: 40)),
  ];

  int counter = 0;

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

        //FG color
        foregroundColor: Colors.white,

        //Leading
        leading: Icon(Icons.home),

        //Actions
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],

        //Elevation
        elevation: 20,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.green,
          ),
        ],
        iconSize: 30,
        // selectedFontSize: 30,
        // showSelectedLabels: false,
        // showUnselectedLabels: true,
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      // floatingActionButton: FloatingActionButton.extended(onPressed: (){},
      // foregroundColor: Colors.white,
      // backgroundColor: Colors.green,
      // label: Text('Share'),
      // icon: Icon(Icons.share),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        // mini: true,
        tooltip: 'Count Number',
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.add),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text('You have pushed the button this many times:'),
            ),
          Center(
            child: Text("$counter", 
            style: TextStyle(
              fontSize: 30,
              ),
            ),
            ),
            
        ],
      ),
    );
  }
}
