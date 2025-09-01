import 'package:bro_flutter_learning/shared_pref_1.dart';
import 'package:bro_flutter_learning/shared_pref_2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatusAndNavigate();
  }

  Future<void> _checkLoginStatusAndNavigate() async {
    final sharedPrefs = await SharedPreferences.getInstance();

    final savedUserName = sharedPrefs.getString('user_name');
    final savedPassword = sharedPrefs.getString('user_password');

    await Future.delayed(Duration(seconds: 3));

    if (!mounted) return;

    if (savedUserName == 'Najeeb' && savedPassword == 'a123456') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SharedSecondPage()),
      );
    } else {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => SharedHome()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.teal,
          child: Text(
            'Splash Screen',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
