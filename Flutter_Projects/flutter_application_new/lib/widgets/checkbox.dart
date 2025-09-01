import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool? isChecked = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  bool? isChecked5 = false;
  var changeTilecolor = Colors.red;
  var changeTilecolor2 = Colors.indigo;

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (val) {
                setState(() {
                  isChecked = val;
                });
              },
            ),
            Checkbox(
              tristate: true,
              activeColor: Colors.red,
              checkColor: Colors.black,
              value: isChecked2,
              onChanged: (val) {
                setState(() {
                  isChecked2 = val;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                title: Text(
                  "Send Notification",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text("Tur On or Off Notification"),
                tileColor: Colors.green,
                value: isChecked3,
                onChanged: (van) {
                  setState(() {
                    isChecked3 = van;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                title: Text(
                  "Send Notification",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text("Tur On or Off Notification"),
                tileColor: changeTilecolor,
                value: isChecked4,
                onChanged: (van) {
                  setState(() {
                    isChecked4 = van;
                    if (van == true){
                      changeTilecolor = Colors.cyan;
                    }else{
                      changeTilecolor = Colors.red;
                    }
                    
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                title: Text(
                  "Send Notification",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text("Tur On or Off Notification"),
                tileColor: changeTilecolor2,
                value: isChecked5,
                onChanged: (van) {
                  setState(() {
                    isChecked5 = van;
                    if (van == true){
                      changeTilecolor2 = Colors.orange;
                    }else{
                      changeTilecolor2 = Colors.indigo;
                    }
                    
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
