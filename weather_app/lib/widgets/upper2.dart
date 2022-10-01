import 'package:flutter/material.dart';

Widget Upper2(
    {required BuildContext context,
    required String cityName,
    required double latitude,
    required double longitude}) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10),
          width: MediaQuery.of(context).size.width * 0.49,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$cityName,",
                style: const TextStyle(
                    fontSize: 25,
                    fontFamily: "Roboto-Bold",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
              const Text(
                "Current Location",
                style: TextStyle(
                    fontSize: 23,
                    fontFamily: "Roboto-Bold",
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Latitude    $latitude",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "OpenSans-Light",
                  color: Color.fromARGB(255, 143, 139, 139),
                ),
              ),
              Text(
                "Longitude  $longitude",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "OpenSans-Light",
                  color: Color.fromARGB(255, 143, 139, 139),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: Card(
            child: SizedBox(
              height: 150,
              width: 100,
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(33),
            ),
            elevation: 20,
            shadowColor: Color.fromARGB(77, 126, 232, 130),
          ),
        )
      ],
    ),
  );
}
