import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/presentation/schedule/controller/schedule_screen_controller.dart';
import 'package:intl/intl.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:gyansanchar/theme/app_style.dart';
import 'package:velocity_x/velocity_x.dart';

class ScheduleScreen extends StatelessWidget {
  final ScheduleController controller = Get.put(ScheduleController());

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
            controller.titles[index],
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

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScheduleController>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(24.0),
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
                children: [
                  Row(
                    children: [
                      Text(
                        "24",
                        style: AppStyle.poppinsblack1,
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wed",
                            style: AppStyle.poppinsgrey1,
                          ),
                          Text(
                            "Jan 2020",
                            style: AppStyle.poppinsgrey1,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 40.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: Color(0xfffdf8e9),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Today",
                            style: AppStyle.poppinsyellow,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: buildDateRow(),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Divider(),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFF7E3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Time",
                                style: AppStyle.poppinsblack11,
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Text(
                                "Course",
                                style: AppStyle.poppinsblack11,
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.icVector,
                                height: 13.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "11:35",
                                    style: AppStyle.poppinsblack13,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "13:05",
                                    style: AppStyle.poppinsblack12,
                                  ),
                                  SizedBox(
                                    height: 85.h,
                                  ),
                                  Text(
                                    "13:15",
                                    style: AppStyle.poppinsblack13,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "14:45",
                                    style: AppStyle.poppinsblack12,
                                  ),
                                  SizedBox(
                                    height: 85.h,
                                  ),
                                  Text(
                                    "15:10",
                                    style: AppStyle.poppinsblack13,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "16:40",
                                    style: AppStyle.poppinsblack12,
                                  ),
                                ],
                              ),
                              SizedBox(width: 15),
                              Column(
                                children: [
                                  buildSelectableContainer(
                                    index: 0,
                                    isSelected: controller.selectedIndex1 == 0,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  buildSelectableContainer(
                                    index: 1,
                                    isSelected: controller.selectedIndex1 == 1,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  buildSelectableContainer(
                                    index: 2,
                                    isSelected: controller.selectedIndex1 == 2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  List<Widget> buildDateRow() {
    List<Widget> widgets = [];
    DateTime now = DateTime.now();

    for (int i = 0; i < 7; i++) {
      DateTime date = now.add(Duration(days: i));
      widgets.add(_buildDateItem(date));
    }

    return widgets;
  }

  Widget _buildDateItem(DateTime date) {
    bool isSelected = date.day == controller.selectedDate?.day;
    return GestureDetector(
      onTap: () {
        controller.onDateTapped(date);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: isSelected ? Color(0xffFF7648) : Colors.transparent,
        ),
        margin: EdgeInsets.only(right: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              DateFormat('E').format(date),
              style: TextStyle(
                color: isSelected ? Color(0xffffffff) : Color(0xffBCC1CD),
                fontWeight: FontWeight.bold,
                fontSize: 12.0.sp,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              "${date.day}",
              style: TextStyle(
                color: isSelected ? Color(0xffffffff) : Color(0xff212525),
                fontWeight: FontWeight.bold,
                fontSize: 12.0.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSelectableContainer(
      {required int index, required bool isSelected}) {
    List<String> courseNames = ["Mathematics", "Biology", "Geography"];
    List<String> courseDetails = [
      "Chapter 1: Introduction",
      "Chapter 3: Animal Kingdom",
      "Chapter 2: Economy USA"
    ];
    List<String> courseModes = ["Online Mode", "Online Mode", "Online Mode"];
    List<String> teachers = [
      "Brooklyn Williamson",
      "Julie Watson",
      "Jenny Alexander"
    ];

    return InkWell(
      onTap: () {
        controller.selectedIndex1 = index;
      },
      child: Container(
        width: 267.w,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffEBB12B) : Color(0xff4B4B4B),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    courseNames[index],
                    style: AppStyle.poppinswhite13,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.icDots,
                    height: 20.h,
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Text(
                courseDetails[index],
                style: AppStyle.poppinswhite131,
              ),
              SizedBox(height: 7.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.iclocation,
                    height: 13.h,
                  ),
                  SizedBox(width: 7.w),
                  Text(
                    courseModes[index],
                    style: AppStyle.poppinswhite111,
                  ),
                ],
              ),
              SizedBox(height: 7.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.icBrooklyn,
                    height: 13.h,
                  ),
                  SizedBox(width: 7.w),
                  Text(
                    teachers[index],
                    style: AppStyle.poppinswhite111,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
