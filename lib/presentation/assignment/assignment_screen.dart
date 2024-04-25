import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/core/constant/constants.dart';
import 'package:intl/intl.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:gyansanchar/theme/app_style.dart';
import 'package:gyansanchar/presentation/assignment/controller/assignment_controller.dart';

class AssignmentScreen extends StatelessWidget {
  final AssignmentController controller = Get.put(AssignmentController());

  Widget _buildBottomNavigationBarItem(int index, String iconPath) {
    return InkWell(
      onTap: () => controller.onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: iconPath,
            height: 20.h,
            color: controller.selectedIndex == index
                ? Color(0xffEBB12B)
                : Color(0xff4B4B4B),
          ),
          SizedBox(height: 4.0),
          Text(
            controller.titles[index] ?? '', // Added null check here
            style: TextStyle(
              color: controller.selectedIndex == index
                  ? Color(0xffEBB12B)
                  : Color(0xff4B4B4B),
              fontSize: 10.0.sp,
            ),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            constraints: BoxConstraints(maxWidth: 300.w),
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
                  "Created Successfully",
                  style: TextStyle(
                    color: Color(0xffF0A854),
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Your Assignment has been Created successfully",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AssignmentController>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBottomNavigationBarItem(0, ImageConstant.icHome),
              _buildBottomNavigationBarItem(1, ImageConstant.icMyCourse),
              _buildBottomNavigationBarItem(2, ImageConstant.icBlog),
              _buildBottomNavigationBarItem(3, ImageConstant.icProfile),
            ],
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Assignments",
                    textScaler: const TextScaler.linear(Constants.factor),
                    style: AppStyle.roboto24Yellow1600,
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    decoration: BoxDecoration(color: Color(0xffFFF7E3)),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                         Text(
                            "Title",
                            textScaler:
                                const TextScaler.linear(Constants.factor),
                            style: AppStyle.relewayblack34,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Tutorial with Lizzy",
                              textScaler:
                                const TextScaler.linear(Constants.factor),
                            style: AppStyle.relewayblack3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color(0xffFFF7E3)),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          Text(
                            "Place",
                              textScaler:
                                const TextScaler.linear(Constants.factor),
                            style: AppStyle.relewayblack34,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Location or video call",
                              textScaler:
                                const TextScaler.linear(Constants.factor),
                            style: AppStyle.relewayblack3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  GestureDetector(
                    onTap: () async {
                      final DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2023),
                        lastDate: DateTime(2025),
                      );

                      if (pickedDate != null) {
                        controller.onDateTapped(pickedDate);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffFFF7E3)),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          children: [
                            Text(
                              "Date",
                                textScaler:
                                  const TextScaler.linear(Constants.factor),
                              style: AppStyle.relewayblack34,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              controller.selectedDate != null
                                  ? DateFormat('EEEE, d MMMM yyyy')
                                      .format(controller.selectedDate!)
                                  : "Thursday, 30th April 2023",
                                    textScaler:
                                  const TextScaler.linear(Constants.factor),
                              style: AppStyle.relewayblack3,
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.icCalender,
                              height: 25.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color(0xffFFF7E3)),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: GestureDetector(
                        onTap: () async {
                          final TimeOfDay? pickedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );

                          if (pickedTime != null) {
                            controller.onTimeTapped(pickedTime);
                          }
                        },
                        child: Row(
                          children: [
                            Text(
                              "Time",
                                textScaler:
                                  const TextScaler.linear(Constants.factor),
                              style: AppStyle.relewayblack34,
                            ),
                            SizedBox(
                              width: 150.w,
                            ),
                            Text(
                              controller.selectedTime != null
                                  ? controller.selectedTime!.format(context)
                                  : "Select time",
                                    textScaler:
                                  const TextScaler.linear(Constants.factor),
                              style: AppStyle.relewayblack34,
                            ),
                            Spacer(),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color(0xffFFF7E3)),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: GestureDetector(
                        onTap: () async {
                          final TimeOfDay? pickedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );

                          if (pickedTime != null) {
                            controller.onRepeatTimeTapped(pickedTime);
                          }
                        },
                        child: Row(
                          children: [
                            Text(
                              "Repeat",
                              style: AppStyle.relewayblack34,
                            ),
                            SizedBox(
                              width: 140.w,
                            ),
                            Text(
                              controller.repeatTime != null
                                  ? controller.repeatTime!.format(context)
                                  : "Select",
                                    textScaler:
                                  const TextScaler.linear(Constants.factor),
                              style: AppStyle.relewayblack34,
                            ),
                            Spacer(),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextField(
                    controller: controller.urlController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      filled: true,
                      fillColor: Color(0xffFFF7E3),
                      hintText: "Enter URL",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: AppStyle.relewayblack3,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  TextField(
                    controller: controller.noteController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 10, // Updated maxLines to 10
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      filled: true,
                      fillColor: Color(0xffFFF7E3),
                      hintText: "Notes",
                      
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: AppStyle.relewayblack3,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
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
                            "Create",
                              textScaler:
                                const TextScaler.linear(Constants.factor),
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
        ),
      );
    });
  }
}
