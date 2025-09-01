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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'User Name',
                  hintText: 'Enter Your User Name',
                  prefixIcon: Icon(Icons.verified_user),
                  suffixIcon: Icon(Icons.verified)
                ),
              ),

              TextField(
                decoration: InputDecoration(
                  labelText: 'User Name',
                  hintText: 'Enter Your User Name',
                  prefixText: 'Mr. ',
                  suffixText: 'Hello'
                ),
              ),

              TextField(
                decoration: InputDecoration(
                  labelText: 'User Name',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.pink,
                  ),
                  hintText: 'Enter Your User Name',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                  ),
                  helperText: 'Enter your username or email',
                ),
              ),

              TextField(
                maxLength: 10,
                obscureText: false,
                keyboardType: TextInputType.number,
              ),

              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 5,
                    ),
                  ),
                  label: Text('User Name')
                ),
              ),

              TextField(
               style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,                
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue,
                  
                ),
              )
            ],
          ),
          ),
      ),
    );
  }
}
