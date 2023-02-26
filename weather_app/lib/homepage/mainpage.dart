import 'package:flutter/material.dart';
import 'package:weather_app/colorList.dart';
import 'package:weather_app/widgets/lower1.dart';
import 'package:weather_app/widgets/lower2.dart';
import 'package:weather_app/widgets/middle.dart';
import 'package:weather_app/widgets/upper1.dart';
import 'package:weather_app/widgets/upper2.dart';

class MainPage extends StatefulWidget {
  double latt;
  double long;
  MainPage({Key? key, required this.latt, required this.long})
      : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: backgroundClr,
        child: SafeArea(
          child: Column(
            children: [
              upper1(context),
              Upper2(
                context: context,
                cityName: "Japan",
                latitude: widget.latt,
                longitude: widget.long,
              ),
              Middle(),
              Lower1(),
              Lower2()
            ],
          ),
        ),
      ),
    );
  }
}
