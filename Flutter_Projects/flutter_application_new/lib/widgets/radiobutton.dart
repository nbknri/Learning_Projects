import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String? gender;
  String? status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: AppBar(
        //Text
        title: Text("Radio Button"),
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

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              color: Colors.amberAccent,
              child: Column(
                children: [
                  Text("Select your Gener", style: TextStyle(fontSize: 20)),
                  ListTile(
                    title: Text('Male'),
                    leading: Radio(
                      value: 'Male',
                      groupValue: gender,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('Female'),
                    leading: Radio(
                      value: 'Female',
                      groupValue: gender,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('Other'),
                    leading: Radio(
                      value: 'Other',
                      groupValue: gender,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                color: Colors.grey,
                child: Column(
                  children: [
                    Text("Marital Status", 
                    style: TextStyle(fontSize: 20)),
                    RadioListTile(
                      title: Text("Married"),
                      value: "Married",
                      groupValue: status,
                      onChanged: (String? value) {
                        setState(() {
                          status = value;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: Colors.red,
                      title: Text("Unmarried"),
                      value: "Unmarried",
                      groupValue: status,
                      onChanged: (String? value) {
                        setState(() {
                          status = value;
                        });
                      },
                    ),
                    Text('$status', 
                    style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
