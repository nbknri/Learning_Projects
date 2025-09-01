import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        //App Bar
        appBar: AppBar(
          bottom: TabBar(tabs: 
          [
            // Tab( text: 'Chats'),
            // Tab( text: 'Status'),
            // Tab( text: 'Calls'),

            // Tab(icon: Icon(Icons.home, ),),
            // Tab(icon: Icon(Icons.settings, ),),
            // Tab(icon: Icon(Icons.share, ),),

            Tab( text: 'Movies'),
            Tab( text: 'Games'),
            Tab( text: 'Books'),
            Tab( text: 'Cat1'),
            Tab( text: 'Cat2'),
            Tab( text: 'Cat3'),
            Tab( text: 'Cat4'),
            Tab( text: 'Cat5'),
            Tab( text: 'Cat6'),
            Tab( text: 'Cat7'),
          ],
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 8,
          indicator: BoxDecoration(borderRadius: BorderRadius.circular(10),
          color: Colors.purple),
          labelColor: Colors.red,
          unselectedLabelColor: Colors.white,
          isScrollable: true,
          
          ),

          //Text
          title: Text("Tab Bar"),
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
      
        body: TabBarView(
          children: [
          Center(child: Text('Movies Page', style: TextStyle(fontSize: 30),)),
          Center(child: Text('Games Page', style: TextStyle(fontSize: 30),)),
          Center(child: Text('Books Page', style: TextStyle(fontSize: 30),)),
          Center(child: Text('Cat1 Page', style: TextStyle(fontSize: 30),)),
          Center(child: Text('Cat2 Page', style: TextStyle(fontSize: 30),)),
          Center(child: Text('Cat3 Page', style: TextStyle(fontSize: 30),)),
          Center(child: Text('Cat4 Page', style: TextStyle(fontSize: 30),)),
          Center(child: Text('Cat5 Page', style: TextStyle(fontSize: 30),)),
          Center(child: Text('Cat6 Page', style: TextStyle(fontSize: 30),)),
          Center(child: Text('Cat7 Page', style: TextStyle(fontSize: 30),)),
        ]),
      ),
    );
  }
}
