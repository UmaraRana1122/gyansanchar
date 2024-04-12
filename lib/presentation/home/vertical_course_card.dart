// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gyansanchar/core/utils/custom_extension.dart';
import 'package:gyansanchar/presentation/resources/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class VerticalCourseCardWidget extends StatelessWidget {
  final Image image;
  final String courseType;
  final String title;
  final double rating;
  final int stars;
  final double price;
  const VerticalCourseCardWidget({
    Key? key,
    required this.image,
    required this.courseType,
    required this.title,
    required this.rating,
    required this.stars,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      image,
      courseType.text.dmSans.color(h8A90A2).sm.heightRelaxed.make(),
      title.text.color(h292930).dmSans.lg.make(),
      [
        "${(rating % 1 == 0) ? rating.toInt() : rating}/5"
            .text
            .xs
            .dmSans
            .color(h292930)
            .heightLoose
            .make(),
        Icon(
          Icons.star,
          size: 16,
          color: hFFDC60,
        ),
        stars.text.xs.dmSans.color(h8A90A2).heightLoose.make()
      ].hStack(),
      (price != 0)
          ? "\$${(price % 1 == 0) ? price.toInt() : price}"
              .text
              .dmSans
              .color(h5956E9)
              .heightRelaxed
              .xs
              .make()
              .py12()
          : "Free"
              .text
              .dmSans
              .color(h5956E9)
              .heightRelaxed
              .xs
              .make()
              .py8()
              .px12()
              .box
              .customRounded(BorderRadius.circular(4))
              .color(hEBEBF9)
              .make()
              .py4()
    ]
        .vStack(
            axisSize: MainAxisSize.min,
            crossAlignment: CrossAxisAlignment.start)
        .p12()
        .box
        .border(color: hF1F3F6)
        .roundedSM
        .make()
        .fittedBox();
  }
}
