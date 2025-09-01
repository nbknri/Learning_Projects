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
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),

        //Elevation
        elevation: 20,
      ),
      body: ListView(
        children: [Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child: Text(
                      'Sign In',
                    style: TextStyle(
                      fontSize: 30
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                radius: 80,
                child: Icon(Icons.verified_user,
                size: 50,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 80,
                backgroundImage: AssetImage('images/bird.webp'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 80,
                backgroundImage: AssetImage('images/horse.avif'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 80,
                backgroundImage: AssetImage('images/tiger.jpeg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 80,
                backgroundImage: NetworkImage('https://media.istockphoto.com/id/93807916/photo/giant-panda-looking-into-camera-holding-green-leaves.jpg?s=612x612&w=0&k=20&c=LtUSqNuiRV-MLNiRVR8k9EMtZRPDsFjNWp2TFcQFqvU='),
                ),
              ),
            ],
          ),
        )],
      )
    );
  }
}
