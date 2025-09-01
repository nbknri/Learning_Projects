import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  
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
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('John Smit'), accountEmail: Text('johnsmith@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                'images/bird.webp',
              ),
              backgroundColor: Colors.white,
            ),
            ), 
            ListTile(
              leading: Icon(Icons.person),
              iconColor: Colors.white,
              title: Text('Profile', style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.white,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              iconColor: Colors.white,
              title: Text('Settings', style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.white,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              iconColor: Colors.white,
              title: Text('Dash Board', style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.white,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              iconColor: Colors.white,
              title: Text('Sign Out', style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.white,
              onTap: () {},
            )
          ],
        ),
      ),
      body: null
    );
  }
}
