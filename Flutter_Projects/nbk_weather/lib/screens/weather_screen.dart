import 'package:flutter/material.dart';
import 'package:nbk_weather/datas/global_variabls.dart';
import 'package:nbk_weather/datas/weather_messages.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key, required this.locationJson});

  final dynamic locationJson;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late String place;
  late var temperature;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place),
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
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins Bold",
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(conditionIcon, scale: 0.5),
                    Text(
                      "It's $conditionText",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins Bold",
                        color: Colors.white,
                      ),
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
                          "°C",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                            // fontWeight: FontWeight.w600,
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
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins Regular",
                          color: Colors.grey.shade400,
                        ),
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
    );
  }
}
