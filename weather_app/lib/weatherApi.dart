import 'dart:convert';

import 'package:http/http.dart' as http;
import 'model/weatherModel.dart';

class WeatherApi {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=b946f907b973ffaabe6332eaaf0df3b4",
    );
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
