import 'package:flutter/material.dart';
import 'package:weather_app/colorList.dart';

Widget neuromorphismIcon({required IconData icons, required double? size}) {
  Offset CustomOffset = Offset(5, 5);

  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      color: backgroundClr,
      borderRadius: BorderRadius.circular(13),
      boxShadow: [
        BoxShadow(
          blurRadius: 11.0,
          offset: CustomOffset,
          color: Color(0xFFc9cccf),
        ),
        BoxShadow(
          blurRadius: 11.0,
          offset: -CustomOffset,
          color: Color(0Xffffffff),
        )
      ],
    ),
    child: Icon(icons, size: size),
  );
}
