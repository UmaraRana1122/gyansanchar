import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/core/constant/constants.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:gyansanchar/theme/app_style.dart';

class SyllabusScreen extends StatelessWidget {
  const SyllabusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.amber,
                    ),
                    Spacer(),
                    Text(
                      "Syllabus",
          textScaler: const TextScaler.linear(Constants.factor),

                      style: AppStyle.dmblack,
                    ),
                    Spacer(
                      flex: 2,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lesson 1. Getting to know the \nWebFlow interface",
          textScaler: const TextScaler.linear(Constants.factor),

                        style: AppStyle.dmblue,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "We study the interface and familiarize \nourselves with the basic functions",
          textScaler: const TextScaler.linear(Constants.factor),

                        style: AppStyle.dmgrey,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 13.h,
                    backgroundColor: Colors.amber,
                    child: CircleAvatar(
                      radius: 11.h,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.check,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Lesson 2. Block model",
          textScaler: const TextScaler.linear(Constants.factor),

                style: AppStyle.dmblue,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "We study the interface and familiarize \nourselves with the basic functions",
          textScaler: const TextScaler.linear(Constants.factor),


                style: AppStyle.dmgrey,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Lesson 3. Tags, classes, and \nunique elements",
          textScaler: const TextScaler.linear(Constants.factor),

                style: AppStyle.dmblue,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "We study the interface and familiarize \nourselves with the basic functions",
          textScaler: const TextScaler.linear(Constants.factor),

                style: AppStyle.dmgrey,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  _showSuccessDialog(context);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffEBB12B),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        "Add to Syllabus",
          textScaler: const TextScaler.linear(Constants.factor),

                        style: AppStyle.dmwhite3,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Container(
            constraints: BoxConstraints(
              maxWidth: 290.w,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: Color(0xffF0A854),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.icSuccess,
                  height: 100.h,
                ),
                SizedBox(height: 10.h),
                Text(
                  "Added Successfully",
          textScaler: const TextScaler.linear(Constants.factor),

                  style: TextStyle(
                    color: Color(0xffF0A854),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Your Syllabus has been Created successfully ",
          textScaler: const TextScaler.linear(Constants.factor),

                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
