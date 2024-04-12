// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:velocity_x/velocity_x.dart';

// class CustomIcon extends StatelessWidget {
//   final String icon;
//   final double? size;
//   final Color? color;
//   final double? scaleValue;
//   const CustomIcon(
//     this.icon, {
//     super.key,
//     this.size,
//     this.color,
//     this.scaleValue,
//   });
//   static const String basePath = "assets/icons";

//   @override
//   Widget build(BuildContext context) {
//     return SvgPicture.asset(
//       "$basePath/$icon.svg",
//       height: size,
//       colorFilter:
//           (color == null) ? null : ColorFilter.mode(color!, BlendMode.srcIn),
//     ).scale(scaleValue: (scaleValue == null) ? 1 : scaleValue);
//   }
// }
