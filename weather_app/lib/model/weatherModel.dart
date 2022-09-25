class Weather {
  String? cityName;
  double? temp;
  double? feelLike;
  int? humidity;
  double? windspeed;
  Weather({
    this.cityName,
    this.temp,
    this.feelLike,
    this.humidity,
    this.windspeed,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    feelLike = json["main"]["feels_like"];
    humidity = json["main"]["humidity"];
    windspeed = json["wind"]["speed"];
  }
}
