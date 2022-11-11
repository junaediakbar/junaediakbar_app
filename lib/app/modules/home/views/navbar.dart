import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget navbar(ResponsiveScreen screen) {
  return Container(
    height: screen.height * 0.10,
    decoration: BoxDecoration(
      color: Colors.blueGrey.shade900,
    ),
    padding: EdgeInsets.symmetric(
      vertical: 12.0,
      horizontal: screen.width * 12 / 100,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('assets/img/Juned.png'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("Download CV"),
          ),
        ),
      ],
    ),
  );
}
