import 'package:flutter/material.dart';
import 'package:nbk_weather/widgets/custom_button.dart';
import 'package:nbk_weather/widgets/error_message.dart';
import 'package:nbk_weather/datas/global_variabls.dart';
import 'package:nbk_weather/datas/network_manage.dart';
import 'package:nbk_weather/screens/weather_screen.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    String cityName = "";
    TextEditingController textController = TextEditingController();

    void gotoWeatherPage({dynamic locationJson}) {
      if (locationJson != null) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (BuildContext context) =>
                WeatherScreen(locationJson: locationJson),
          ),
          (Route<dynamic> route) => false,
        );
      } else {
        showErrorMessage(context, errorMessage);
      }
    }

    void getWeatherData() async {
      cityName = textController.text;
      if (cityName.isNotEmpty) {
        NetworkManage networkData = NetworkManage(location: cityName);
        var locationJson = await networkData.getCurrentLocationJson();
        gotoWeatherPage(locationJson: locationJson);
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Search for a city", 
          style: appBarTextStyle,
          ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: "Enter city name",
                  suffixIcon: Icon(
                    Icons.search, 
                    color: Colors.black, 
                    size: 30,
                    ),
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins Regular",
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: "Poppins Bold",
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              onPressed: getWeatherData,
              horizontalPadding: 80.0,
              buttonText: "Get Weather",
            ),
          ],
        ),
      ),
    );
  }
}
