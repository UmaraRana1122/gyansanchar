// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_export.dart';
// import 'color_constant.dart';
// import '../../theme/app_style.dart';

void CustomSnackBar(String msg, String type) {
  Get.rawSnackbar(
    // messageText: Text(msg, style: AppStyle.montserrat12white600),
    // icon: type == "S"
    //     ? Icon(
    //         Icons.check_circle_rounded,
    //         color: ColorConstant.success,
    //       )
    //     : type == "E"
    //         ? Icon(
    //             Icons.error_outline_rounded,
    //             color: ColorConstant.error,
    //           )
    //         : Icon(
    //             Icons.warning_amber_rounded,
    //             color: ColorConstant.orangeOne,
    //           ),
    // backgroundColor: ColorConstant.bgGrey,
    // duration: Duration(milliseconds: 2000),
    // margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
    // padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
    // snackPosition: SnackPosition.TOP,
    // borderRadius: 5,
    // animationDuration: Duration(milliseconds: 1000),
    // backgroundGradient: LinearGradient(
    //   colors: [ColorConstant.bgGrey, ColorConstant.bgGrey],
    // ),
  );
}
