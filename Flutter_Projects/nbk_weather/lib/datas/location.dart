import 'package:geolocator/geolocator.dart';
import 'package:nbk_weather/datas/global_variabls.dart';

class Location {
  double? latitude;
  double? longitude;
  late var data;

  Location({this.latitude, this.longitude});

  static Future<Location?> getCurrentLocation() async {
    try {
      final LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.low,
        distanceFilter: 500,
      );

      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        errorMessage =
            "Location permissions are denied. Please allow it.";
        await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.deniedForever) {
        errorMessage = "Location permissions are permanently denied.";
      }

      Position position = await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );

      return Location(
        latitude: position.latitude,
        longitude: position.longitude,
      );
    } on LocationServiceDisabledException {
      errorMessage =
          "Location services are disabled. Please enable GPS.";
      return null;
    } on PermissionDeniedException {
      errorMessage = "Location permission denied by user.";
      return null;
    } catch (e) {
      errorMessage = "Error: $e";
      return null;
    }
  }
}
