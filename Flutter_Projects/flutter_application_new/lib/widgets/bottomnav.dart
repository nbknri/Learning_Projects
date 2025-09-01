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

        //Elevation
        elevation: 20,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
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

      body: Center(
        child: tabWidgets.elementAt(indexNum),
        
      )
      
    );
  }
}
