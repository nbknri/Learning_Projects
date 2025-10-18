import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nbk_weather/datas/global_variabls.dart';

class NetworkManage {
  late String location;
  late dynamic data;

  NetworkManage({required this.location});

  Future<dynamic> getCurrentLocationJson() async {
    try {
      final Uri url = Uri.parse("$apiUrl$location");

      http.Response response = await http.get(url);

      if (response.statusCode == 200) {
        data = response.body;
        return jsonDecode(data);
      } else {
        errorMessage =
            "Failed to get data. Status code: ${response.statusCode}";
        return;
      }
    } on http.BaseResponseWithUrl {
      errorMessage = "Network Error: Unable to reach the server.";
      return;
    } on http.ClientException catch (e) {
      errorMessage = "Network error: ${e.message}";
      return;
    } on FormatException {
      errorMessage = "Data format error: Unable to process the data.";
      return;
    } catch (e) {
      errorMessage = "Unexpected Error: $e";
      return;
    }
  }
}
