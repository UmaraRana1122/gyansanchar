import 'package:flutter/material.dart';
import 'package:gyansanchar/core/app_export.dart';

Widget courseWidget(
  String text,
  String text2,
Color color,
Color color2,

){
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
           text,
  style:TextStyle(
    color: color,
    height: 0,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Raleway',
  )
          ),
          Text(
            text2,
            style: TextStyle(
    color: color2,
    height: 0,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Raleway',
  )
          ),
        ],
      ),
    );
}