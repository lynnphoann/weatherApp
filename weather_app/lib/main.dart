import 'package:location/location.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/colorList.dart';
import 'package:weather_app/homepage/mainpage.dart';
import 'package:weather_app/model/weatherModel.dart';
import 'package:weather_app/weatherApi.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:weather_app/widgets/googleMap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Roboto",
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // location permission ****************
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  late LocationData _userLocation;

// Weather Api ****************
  WeatherApi client = WeatherApi();
  Weather? apiData;

// location Api*******************

  WeatherLocationApi locationApi = WeatherLocationApi();
  WeatherName? locationData;

  Future<void> getUserLocation() async {
    Location location = Location();
    _serviceEnabled = await location.serviceEnabled();

    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.denied) {
        return;
      }
    }

    final _locationData = await location.getLocation();
    setState(() {
      _userLocation = _locationData;

      print(_userLocation.latitude);
      print(_userLocation.longitude);
    });
  }

  @override
  void initState() {
    getUserLocation();
    getLocationData();
    getApiData();
    super.initState();
  }

  Future<void> getLocationData() async {
    locationData = await locationApi.getLocationName();
  }

  Future<void> getApiData() async {
    apiData = await client.getCurrentWeather("japan");
  }

  @override
  Widget build(BuildContext context) {
    double locationLatt = _userLocation.latitude!;
    double locationLong = _userLocation.longitude!;
    return Scaffold(
        backgroundColor: backgroundClr,
        body: FutureBuilder(
          future: getLocationData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return MainPage(
                latt: locationLatt,
                long: locationLong,
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container();
            }
          },
        ));
  }
}
