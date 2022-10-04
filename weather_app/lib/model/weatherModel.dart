import 'package:flutter/material.dart';

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

class SevenDaysModel {
  Color textColor;
  String date;
  String weatherIcon;
  Color bgColor;
  String temp;
  String title;
  SevenDaysModel({
    this.textColor = Colors.black,
    required this.date,
    required this.weatherIcon,
    required this.bgColor,
    required this.temp,
    required this.title,
  });
}
