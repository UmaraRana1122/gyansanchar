import 'package:flutter/material.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/presentation/course/controller/course_controller.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/physics_assignment/controller/physics_assignment_controller.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:gyansanchar/theme/app_style.dart';

class PhysicsAssignmentScreen extends StatelessWidget {
  final PhyAssignmentController controller = Get.put(PhyAssignmentController());

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.close,
                            color: Color(0xff000000),
                          ),
                        ),
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
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffEBB12B),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Assignment",
                                    style: AppStyle.ralewaywhite1,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "2 / 5",
                                    style: AppStyle.ralewaywhite1,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 60.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Group Work",
                                    style: AppStyle.ralewaywhite1,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "2 / 2",
                                    style: AppStyle.ralewaywhite1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Submission-",
                            style: AppStyle.ralewaywhite1,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Assignment due on the 21st of April at 11:59 pm",
                            style: AppStyle.ralewaywhite21,
                          ),
                          SizedBox(
                            height: 3.h,
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
                  Text(
                    "Assignment",
                    style: AppStyle.ralewayblack111,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Details",
                            style: AppStyle.ralewayellow111,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Question on Photoelectric effect, Test your understanding with practice problems and answer them carefully.",
                            style: AppStyle.ralewablack111,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Submission-",
                            style: AppStyle.ralewayellow111,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Assignment due on the 21st of April at 11:59 pm",
                            style: AppStyle.ralewablack111,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "Assignment",
                                style: AppStyle.ralewayellow11,
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff000000),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Group Work",
                    style: AppStyle.ralewayblack111,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffd0d1d9),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Details",
                            style: AppStyle.ralewayblackk,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "-",
                            style: AppStyle.ralewablack111,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Submission-",
                            style: AppStyle.ralewayblackk,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "-",
                            style: AppStyle.ralewablack111,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "Add Group Work",
                                style: AppStyle.ralewaywhitee,
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xffffffff),
                              )
                            ],
                          )
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
}
