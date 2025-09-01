import 'package:bro_flutter_learning/shared_pref_1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedSecondPage extends StatelessWidget {
  const SharedSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Second Page')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Successfull', style: TextStyle(fontSize: 40)),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: ElevatedButton(
                  onPressed: () {
                    signOut();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SharedHome()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50)
                  ),
                  child: Text('Sign Out', style: TextStyle(fontSize: 25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> signOut() async {
  //Shared Preference
  final sharedPrefs = await SharedPreferences.getInstance();

  //Save Data
  await sharedPrefs.setString('user_name', "");
  await sharedPrefs.setString('user_password', "");
}
