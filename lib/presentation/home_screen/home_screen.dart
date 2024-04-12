import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/home_screen/controller/home_screen_controller.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:gyansanchar/theme/app_style.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.icProfileImage,
                          height: 50.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lina Kovalenko",
                              style: AppStyle.dm15Blue,
                            ),
                            Text(
                              "English teacher",
                              style: AppStyle.dm12Blue,
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffEBEEFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomImageView(
                              imagePath: ImageConstant.icBellIcon,
                              height: 16.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Subjects",
                      style: AppStyle.roboto24Yellow1600,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Recommendations for you",
                      style: AppStyle.poppins14Greyblue400,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                              height: 120.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFF7E3),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    right: 35,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Mathematics",
                                        style: AppStyle.poppinsblack3,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0.0,
                                    right: 0.0,
                                    child: Column(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.icMathematics,
                                          height: 100.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -30.0,
                                    right: 90.0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/icons/graphy.png",
                                        height: 10.h,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                              height: 120.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffEBB12B),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    right: 40,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Geography",
                                        style: AppStyle.poppinwhite3,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0.0,
                                    right: 0.0,
                                    child: Column(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.icMathematics,
                                          height: 100.h,
                                          color: Color(0xffFFF7E3),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -30.0,
                                    right: 90.0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/icons/world.png",
                                        height: 10.h,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                              height: 120.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffEBB12B),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    right: 40,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Geography",
                                        style: AppStyle.poppinwhite3,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0.0,
                                    right: 0.0,
                                    child: Column(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.icMathematics,
                                          height: 100.h,
                                          color: Color(0xffFFF7E3),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: -30.0,
                                    right: 90.0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/icons/world.png",
                                        height: 10.h,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      "Your Schedule",
                      style: AppStyle.roboto24Yellow1600,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Next lessons",
                          style: AppStyle.poppins14Greyblue400,
                        ),
                        Text(
                          "see more",
                          style: AppStyle.ralewaydark,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                        height: 120.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                            color: Color(0xffFFF7E3),
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    "Biology",
                                    style: AppStyle.poppinsblack3,
                                  ),
                                  SizedBox(
                                    height: 9.h,
                                  ),
                                  Text(
                                    "Chapter 3 : Animal Kingdom",
                                    style: AppStyle.robotoblack,
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffEBB12B),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "11:25-1:00 pm",
                                        style: AppStyle.robotowhite3,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0.0,
                              right: 0.0,
                              child: Column(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.icBiology,
                                    height: 100.h,
                                    color: Color(0xffEBB12B),
                                  ),
                                ],
                              ),
                            ),
                            Positioned.fill(
                              top: -30.0,
                              right: 80.0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Biology",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 25.h,
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
                          "Course Registration",
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
                          "Test Papers",
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
                          "Results",
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
                          "Online textbooks",
                          style: AppStyle.robotodark1,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.icOnlineTextBook,
                          height: 30.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 12.0,
                        childAspectRatio: 1.5,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final data = controller.containerData[index];
                        Color backgroundColor;
                        if (index == 0 || index == 3 || index == 4) {
                          backgroundColor = Color(0xffEBB12B);
                        } else {
                          backgroundColor = Color(0xffFFF7E3);
                        }
                        return GestureDetector(
                          onTap: () => controller.onContainerTapped(index),
                          child: Container(
                            color: backgroundColor,
                            child: Center(
                              child: data,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
