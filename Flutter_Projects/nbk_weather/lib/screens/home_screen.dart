import 'package:flutter/material.dart';
import 'package:nbk_weather/datas/error_message.dart';
import 'package:nbk_weather/datas/fetch_current_location.dart';
import 'package:nbk_weather/datas/global_variabls.dart';
import 'package:nbk_weather/screens/weather_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var locationJson;

  @override
  void initState() {
    super.initState();
    _loadLocationData();
  }

  void _loadLocationData() async {
    locationJson = await fetchCurrentLocation();
    setState(() {});
  }

  void goToWeatherScreen() {
    if (locationJson != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) =>
              WeatherScreen(locationJson: locationJson),
        ),
      );
    } else {
      _loadLocationData();
    }

    if (errorMessage.isNotEmpty) {
      showErrorMessage(context, errorMessage);
    }
    errorMessage = "";
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
              onPressed: () => goToWeatherScreen(),
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
