import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/logo.jpg"),
              ),
              SizedBox(height: 10),
              Text(
                "NBKNRI",
                style: TextStyle(
                  fontFamily: "GravitasOne",
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Flutter Developer".toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple.shade100,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: Icon(Icons.call, color: Colors.deepPurple, size: 25),
                  title: Text(
                    "+91 9895106646",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: Icon(Icons.mail, color: Colors.deepPurple.shade800, size: 25),
                  title: Text(
                    "nbknri@gmail.com",
                    style: TextStyle(
                      color: Colors.deepPurple.shade800,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
