import 'package:flutter/material.dart';
import 'package:nbk_weather/widgets/custom_button.dart';
import 'package:nbk_weather/widgets/error_message.dart';
import 'package:nbk_weather/datas/fetch_current_location.dart';
import 'package:nbk_weather/datas/global_variabls.dart';
import 'package:nbk_weather/screens/weather_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic locationJson;

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
      Navigator.pushReplacement(
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
                style: titleTextStyle,
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 68.5),
              child: Text(
                "Go to know your weather maps and redar precipitaion forecast",
                textAlign: TextAlign.center,
                style: subTitleTextStyle,
              ),
            ),
            SizedBox(height: 55),
            CustomButton(
              onPressed: goToWeatherScreen,
              horizontalPadding: 130.0,
              buttonText: "Get Weather",
            ),
          ],
        ),
      ),
    );
  }
}
