import 'package:nbk_weather/datas/global_variabls.dart';
import 'package:nbk_weather/datas/location.dart';
import 'package:nbk_weather/datas/network_manage.dart';

Future<dynamic> fetchCurrentLocation() async {
  try {
    Location? location = await Location.getCurrentLocation();

    if (location == null ||
        location.latitude == null ||
        location.longitude == null) {
      errorMessage = "Failed to get current location.";
      return;
    }

    NetworkManage networkData = NetworkManage(
      location: "${location.latitude},${location.longitude}",
    );

    var locationJson = await networkData.getCurrentLocationJson();
    return locationJson;
  } catch (e) {
    errorMessage = "Error fetching current location: $e";
    return;
  }
}
