import 'package:flutter/material.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/core/utils/color_constant.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:gyansanchar/theme/app_style.dart';

Widget gridWidget(
  String isImage,
  String text,
  Color color,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      CustomImageView(
        imagePath:isImage,
        height: 30.h,
      ),
      Text(
        text,
        style: TextStyle(
          color:color,
          height: 0,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          fontFamily: 'Raleway',
        ),
      ),
    ],
  );
}
