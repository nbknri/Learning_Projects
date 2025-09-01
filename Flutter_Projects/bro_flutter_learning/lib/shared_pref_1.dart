import 'package:bro_flutter_learning/shared_pref_2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {
  const SharedHome({super.key});

  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  final _userName = TextEditingController();

  final _password = TextEditingController();

  bool invalidUsername = false;
  bool invalidPassword = false;

  //border color changing
  // var invalidColor = BorderSide();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Pref Sample')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _userName,
                  decoration: InputDecoration(
                    label: Text('User Name'),
                    border: OutlineInputBorder(),
                    // enabledBorder: OutlineInputBorder(borderSide: invalidColor),
                  ),
                ),
              ),
              Visibility(
                visible: invalidUsername,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Invalid Username',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(),
                    // enabledBorder: OutlineInputBorder(borderSide:invalidColor)
                  ),
                ),
              ),
              Visibility(
                visible: invalidPassword,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Invalid Password',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    savedDataToStorage();
                    getSavedData(context);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text('Sign In', style: TextStyle(fontSize: 25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> savedDataToStorage() async {
    //Shared Preference
    final sharedPrefs = await SharedPreferences.getInstance();
    //Save Data
    await sharedPrefs.setString('user_name', _userName.text);
    await sharedPrefs.setString('user_password', _password.text);
  }

  Future<void> getSavedData(context) async {
    if (_userName.text == 'Najeeb' && _password.text == 'a123456') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SharedSecondPage()),
      );
    } else {
      final errorMessage = "Invalid credentials";

      
      // Snack bar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          // duration: Duration(seconds: 5),
          margin: EdgeInsets.all(10),
          content: Text(errorMessage),
        ),
      );

    /*
      //Alert Dialog
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text(errorMessage),
            actions: [
              TextButton(
                onPressed: () {
                  _password.text = '';
                  _userName.text = '';
                  Navigator.pop(context);
                },
                child: Text('Retry'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close'),
              ),
            ],
          );
        },
      );
      */

      //Show Text
      setState(() {
        if (_userName.text == 'Najeeb') {
          invalidUsername = false;
        } else {
          invalidUsername = true;
          // invalidColor = BorderSide(color: Colors.red, width: 2.0);
        }

        if (_password.text == 'a123456') {
          invalidPassword = false;
        } else {
          invalidPassword = true;
          // invalidColor = BorderSide(color: Colors.red, width: 2.0);
        }
      });
    }
  }
}
