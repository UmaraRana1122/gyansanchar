import 'package:flutter/material.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/presentation/course/controller/course_controller.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/physics_assignment/physics_assignment.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:gyansanchar/theme/app_style.dart';

class CourseScreen extends StatelessWidget {
  final CourseController controller = Get.put(CourseController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CourseController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.icBack,
                        height: 13.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Courses",
                        style: AppStyle.dmYellow1600,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PhysicsAssignmentScreen());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffEBB12B),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Physics 211",
                                      style: AppStyle.ralewaywhite11,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "Prof.  Andrew Grey",
                                      style: AppStyle.ralewaywhite1,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.icJullie,
                                  height: 40.h,
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: LinearProgressIndicator(
                                  value: 0.7,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xffffffff)),
                                  backgroundColor: Color(0xffefc155),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Course outline progress",
                                  style: AppStyle.ralewaywhite1,
                                ),
                                Spacer(),
                                Text(
                                  "68%",
                                  style: AppStyle.ralewaywhite1,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFFF7E3),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "NEET 211",
                                    style: AppStyle.ralewayblack11,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "Prof.  Andrew Grey",
                                    style: AppStyle.ralewayblack1,
                                  ),
                                ],
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.icJullie,
                                height: 40.h,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                value: 0.7,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xffefc155)),
                                backgroundColor: Color(0xffDBD4C3),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Course outline progress",
                                style: AppStyle.ralewayyellow1,
                              ),
                              Spacer(),
                              Text(
                                "68%",
                                style: AppStyle.ralewayyellow1,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffEBB12B),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lil Genius 211",
                                    style: AppStyle.ralewaywhite11,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "Prof.  Andrew Grey",
                                    style: AppStyle.ralewaywhite1,
                                  ),
                                ],
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.icJullie,
                                height: 40.h,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                value: 0.7,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xffffffff)),
                                backgroundColor: Color(0xffefc155),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Course outline progress",
                                style: AppStyle.ralewaywhite1,
                              ),
                              Spacer(),
                              Text(
                                "68%",
                                style: AppStyle.ralewaywhite1,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFFF7E3),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Foundation Batch 211",
                                    style: AppStyle.ralewayblack11,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "Prof.  Andrew Grey",
                                    style: AppStyle.ralewayblack1,
                                  ),
                                ],
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.icJullie,
                                height: 40.h,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                value: 0.7,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xffefc155)),
                                backgroundColor: Color(0xffDBD4C3),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Course outline progress",
                                style: AppStyle.ralewayyellow1,
                              ),
                              Spacer(),
                              Text(
                                "68%",
                                style: AppStyle.ralewayyellow1,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Remaining Lectures",
                        style: AppStyle.ralewayblack111,
                      ),
                      Spacer(),
                      Text(
                        "see more",
                        style: AppStyle.ralewayblack1111,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                      childAspectRatio: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final data = controller.containerData[index];
                      Color backgroundColor;
                      if (index == 0 || index == 3 || index == 4) {
                        backgroundColor = Color(0xffEBB12B);
                      } else {
                        backgroundColor = Color(0xffFFF7E3);
                      }
                      return Container(
                        color: backgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: data,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quick Links ",
                        style: AppStyle.roboto24Yellow1600,
                      ),
                      Text(
                        "see more",
                        style: AppStyle.ralewaydark,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Course Materials",
                        style: AppStyle.robotodark1,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.icCourse,
                        height: 30.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Online Textbooks",
                        style: AppStyle.robotodark1,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.icTest,
                        height: 30.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Download Class Schedule",
                        style: AppStyle.robotodark1,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.icResult,
                        height: 30.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Course Registration",
                        style: AppStyle.robotodark1,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.icOnlineTextBook,
                        height: 30.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
