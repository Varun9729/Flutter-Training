import 'dart:convert';

import 'package:bloc_two/model/weather.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future getWeather(String city) async {
    String requestUrl =
        'https://01b0f7a1-9563-47f5-b628-f14c51464ec5.mock.pstmn.io/api/get-weather-success?city=$city';
    http.Response response = await http.get(Uri.parse(requestUrl));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      Weather _weather = Weather(
          city: city,
          temperature: decodedData['temperature'],
          yesterdayMax: decodedData['yesterdayMax'],
          yesterdayMin: decodedData['yesterdayMin'],
          todayMax: decodedData['todayMax'],
          todayMin: decodedData['todayMin']);
      return _weather;
    } else {
      throw Exception();
    }
  }
}
