import 'package:flutter/material.dart';

class MiniBox extends StatelessWidget {
  String imageString;
  String iconUnit;
  MiniBox({
    Key? key,
    required this.imageString,
    required this.iconUnit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          elevation: 7,
          shadowColor: Color.fromARGB(201, 222, 222, 222),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: EdgeInsets.all(15),
            height: 60,
            width: 60,
            child: Image.asset(
              imageString,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "$iconUnit",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Roboto",
            color: Color.fromARGB(255, 194, 192, 192),
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
