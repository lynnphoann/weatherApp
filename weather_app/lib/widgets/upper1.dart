import 'package:flutter/material.dart';
import 'package:weather_app/widgets/neuroIcon.dart';

Widget upper1(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    padding: EdgeInsets.only(left: 10, top: 7, right: 7, bottom: 7),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text(
          "Weather",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 29, 29, 29),
            fontFamily: 'OpenSans-SemiBold',
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.32),
        neuromorphismIcon(icons: Icons.notifications_outlined, size: 24),
        const SizedBox(
          width: 15,
        ),
        neuromorphismIcon(icons: Icons.filter_none_outlined, size: 18),
        const SizedBox(
          width: 5,
        )
      ],
    ),
  );
}
