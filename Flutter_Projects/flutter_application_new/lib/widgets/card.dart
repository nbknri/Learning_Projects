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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    title: Text('CBI 5'),
                    subtitle: Text('Starring Mammotty'),
                    trailing: Icon(Icons.more_horiz),
                    onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    title: Text('LUCIFER'),
                    subtitle: Text('Starring Mohanlal'),
                    trailing: Icon(Icons.more_horiz),
                    onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              shadowColor: Colors.red,
              elevation: 20,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    title: Text('KADUVA'),
                    subtitle: Text('Starring Prithiviraj'),
                    trailing: Icon(Icons.more_horiz),
                    onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    title: Text('CBI 5'),
                    subtitle: Text('Starring Mammotty'),
                    trailing: Icon(Icons.more_horiz),
                    onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    title: Text('LUCIFER'),
                    subtitle: Text('Starring Mohanlal'),
                    trailing: Icon(Icons.more_horiz),
                    onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              shadowColor: Colors.red,
              elevation: 20,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    title: Text('KADUVA'),
                    subtitle: Text('Starring Prithiviraj'),
                    trailing: Icon(Icons.more_horiz),
                    onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    title: Text('CBI 5'),
                    subtitle: Text('Starring Mammotty'),
                    trailing: Icon(Icons.more_horiz),
                    onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    title: Text('LUCIFER'),
                    subtitle: Text('Starring Mohanlal'),
                    trailing: Icon(Icons.more_horiz),
                    onTap: (){},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              shadowColor: Colors.red,
              elevation: 20,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    title: Text('KADUVA'),
                    subtitle: Text('Starring Prithiviraj'),
                    trailing: Icon(Icons.more_horiz),
                    onTap: (){},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
