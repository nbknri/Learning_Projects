import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  final LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.low,
    distanceFilter: 500,
  );

  Future<void> getCurrentLocation()async{
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
      locationSettings: locationSettings,
    );
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch (e) {
      print(e);
    }
  }
}
