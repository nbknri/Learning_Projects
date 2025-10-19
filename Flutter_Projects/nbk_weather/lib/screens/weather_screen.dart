import 'package:flutter/material.dart';
import 'package:nbk_weather/datas/fetch_current_location.dart';
import 'package:nbk_weather/datas/global_variabls.dart';
import 'package:nbk_weather/datas/weather_messages.dart';
import 'package:nbk_weather/screens/search_page.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key, required this.locationJson});

  final dynamic locationJson;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late String place;
  late dynamic temperature;
  late String conditionText;
  late String conditionIcon;

  @override
  void initState() {
    super.initState();
    updateUi(widget.locationJson);
  }

  void updateUi(dynamic locationJson) {
    place = locationJson["location"]["name"];
    temperature = (locationJson["current"]["temp_c"]).toInt();
    conditionText = locationJson["current"]["condition"]["text"];
    conditionIcon = "https:${locationJson["current"]["condition"]["icon"]}";
    conditionIcon = conditionIcon.replaceAll("64x64", "128x128");

    // Call weatherMessage
    weatherMessages(temperature);
  }

  void _loadLocationData() async {
    var locationJson = await fetchCurrentLocation();
    setState(() {
      updateUi(locationJson);
    });
  }

  @override
  Widget build(BuildContext context) {
    void goToSearchPage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => SearchPage()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => _loadLocationData(),
          icon: Icon(Icons.navigation_rounded),
        ),
        title: Text(place, style: appBarTextStyle),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                child: Text(
                  "Today's Report",
                  style: titleTextStyle,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(conditionIcon, scale: 0.5),
                    Text(
                      "It's $conditionText",
                      style: titleTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          temperature.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins Bold",
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "°",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Poppins Bold",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: AlignmentGeometry.center,
                      decoration: BoxDecoration(
                        color: Color(0xff0A0B17),
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: Text(
                        weatherMessage,
                        textAlign: TextAlign.center,
                        style: subTitleTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => goToSearchPage(),
        backgroundColor: Colors.blue.shade800,
        child: Icon(Icons.search, size: 40.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
