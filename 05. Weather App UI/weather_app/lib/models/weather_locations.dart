import 'package:flutter/material.dart';

class WeatherLocation {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    required this.city,
    required this.dateTime,
    required this.temparature,
    required this.weatherType,
    required this.iconUrl,
    required this.wind,
    required this.rain,
    required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
      city: 'Kathmandu',
      dateTime: '12:54 PM - Mondyay, 7 Jul 2023',
      temparature: '24\u2103',
      weatherType: 'Night',
      iconUrl: 'assets/moon.svg',
      wind: 10,
      rain: 2,
      humidity: 10),
  WeatherLocation(
      city: 'London',
      dateTime: '7:45 AM - Monday, 7 Jul 2023',
      temparature: '18\u2103',
      weatherType: 'Cloudy',
      iconUrl: 'assets/cloudy.svg',
      wind: 8,
      rain: 7,
      humidity: 82),
  WeatherLocation(
    city: 'New York',
    dateTime: '09:20 AM - Sunday, 6 Jul 2023',
    temparature: '17\u2103',
    weatherType: 'Sunny',
    iconUrl: 'assets/sun.svg',
    wind: 5,
    rain: 15,
    humidity: 60,
  ),
  WeatherLocation(
      city: 'Sydney',
      dateTime: '01:20 AM - Tuesday, 8 Jul 2023',
      temparature: '12\u2103',
      weatherType: 'Rainy',
      iconUrl: 'assets/rain.svg',
      wind: 20,
      rain: 70,
      humidity: 90),
];
