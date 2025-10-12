import 'package:flutter/material.dart';
import 'package:nbk_weather/location.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double latitude;
  late double longitude;

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    print(latitude);
    print(longitude);
  }

  Future<void> getData() async {
    http.Response response = await http.get(
      Uri.parse(
        "https://api.weatherapi.com/v1/current.json?key=b6cbe4186a0a461ba6e204235251110&q=$latitude,$longitude",
      ),
    );
    if (response.statusCode == 200) {
      var data = response.body;
      print(data);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Weather.png", height: 300.0),
            SizedBox(height: 25.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 55.0),
              child: Text(
                "Discover the Weather in Your City",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins Bold",
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 68.5),
              child: Text(
                "Go to know your weather maps and redar precipitaion forecast",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins Regular",
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            SizedBox(height: 55),
            ElevatedButton(
              onPressed: () {
                getLocation();
                getData();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade800,
                padding: EdgeInsets.symmetric(
                  horizontal: 130.0,
                  vertical: 15.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                "Get Weather",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Poppins Regualr",
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
