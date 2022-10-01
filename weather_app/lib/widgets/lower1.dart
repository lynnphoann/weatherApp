import 'package:flutter/material.dart';
import 'package:weather_app/widgets/minibox.dart';

class Lower1 extends StatelessWidget {
  const Lower1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          MiniBox(imageString: "assets/icons/wind.png", iconUnit: "14 km/h"),
          MiniBox(imageString: "assets/icons/water.png", iconUnit: "35%"),
          MiniBox(imageString: "assets/icons/clouds.png", iconUnit: "23%"),
        ],
      ),
    );
  }
}
