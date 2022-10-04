import 'package:flutter/material.dart';
import 'package:weather_app/colorList.dart';
import 'package:weather_app/widgets/lower1.dart';
import 'package:weather_app/widgets/lower2.dart';
import 'package:weather_app/widgets/middle.dart';
import 'package:weather_app/widgets/upper1.dart';
import 'package:weather_app/widgets/upper2.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
                cityName: "London",
                latitude: -188.0,
                longitude: 212.5,
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
