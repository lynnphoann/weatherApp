import 'dart:ui';

import 'package:flutter/material.dart';

class Middle extends StatelessWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 9,
        shadowColor: Color.fromARGB(163, 84, 132, 213),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 128, 191, 243),
              Color.fromARGB(255, 175, 206, 232)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 135,
                    width: 135,
                    child: Image.asset(
                      "assets/icons/rain.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Cloudy",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(214, 255, 255, 255),
                      fontWeight: FontWeight.w700,
                      fontFamily: "OpenSans",
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "28°",
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                    ),
                  ),
                  Text(
                    "30°",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 228, 228, 228),
                      fontFamily: "Roboto",
                    ),
                  ),
                  Text(
                    "feels like",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 228, 228, 228),
                      fontFamily: "Roboto",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
