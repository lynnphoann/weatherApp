import 'package:flutter/material.dart';
import 'package:weather_app/7daysDummyData.dart';

class Lower2 extends StatelessWidget {
  const Lower2({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle(int index) {
      return TextStyle(
        fontFamily: "OpenSans",
        fontWeight: FontWeight.w600,
        color: SDaysDummyData[index].textColor,
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      height: 175,
      child: ListView.builder(
        addRepaintBoundaries: true,
        scrollDirection: Axis.horizontal,
        itemCount: SDaysDummyData.length,
        itemBuilder: ((context, index) {
          return Container(
            width: 75,
            padding: EdgeInsets.symmetric(vertical: 5),
            margin: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: SDaysDummyData[index].bgColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  SDaysDummyData[index].date,
                  style: textStyle(index),
                ),
                SizedBox(
                  height: 50,
                  child: Image.asset(SDaysDummyData[index].weatherIcon,
                      fit: BoxFit.cover),
                ),
                Text(
                  SDaysDummyData[index].temp,
                  style: textStyle(index),
                ),
                Text(
                  SDaysDummyData[index].title,
                  style: textStyle(index),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
