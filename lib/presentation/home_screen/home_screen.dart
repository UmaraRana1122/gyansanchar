import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/core/constant/constants.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/home_screen/controller/home_screen_controller.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:gyansanchar/theme/app_style.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 50,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.amber,
                      child: CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: NetworkImage(
                                "https://helostatus.com/wp-content/uploads/2021/09/pic-for-WhatsApp-HD.jpg"),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 6,
                    right: 6,
                    bottom: 0,
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 6,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lina Kovalenko",
                    textScaler: const TextScaler.linear(Constants.factor),
                  style: AppStyle.dm15Blue,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "English teacher",
                    textScaler: const TextScaler.linear(Constants.factor),
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
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Subjects",
                      textScaler: const TextScaler.linear(Constants.factor),
                    style: AppStyle.roboto24Yellow1600,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Recommendations for you",
                      textScaler: const TextScaler.linear(Constants.factor),
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
                                        textScaler: const TextScaler.linear(
                                          Constants.factor),
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
                                        imagePath: ImageConstant.icMathematics,
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
                                        textScaler: const TextScaler.linear(
                                          Constants.factor),
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
                                        imagePath: ImageConstant.icMathematics,
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
                                        textScaler: const TextScaler.linear(
                                          Constants.factor),
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
                                        imagePath: ImageConstant.icMathematics,
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
                      textScaler: const TextScaler.linear(Constants.factor),
                    style: AppStyle.roboto24Yellow1600,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Next lessons",
                          textScaler: const TextScaler.linear(Constants.factor),
                        style: AppStyle.poppins14Greyblue400,
                      ),
                      Text(
                        "see more",
                          textScaler: const TextScaler.linear(Constants.factor),
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
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  "Biology",
                                    textScaler:
                                      const TextScaler.linear(Constants.factor),
                                  style: AppStyle.poppinsblack3,
                                ),
                                SizedBox(
                                  height: 9.h,
                                ),
                                Text(
                                  "Chapter 3 : Animal Kingdom",
                                    textScaler:
                                      const TextScaler.linear(Constants.factor),
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
                                        textScaler: const TextScaler.linear(
                                          Constants.factor),
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
                        ],
                      )),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quick Links ",
                                textScaler:
                                  const TextScaler.linear(Constants.factor),
                              style: AppStyle.roboto24Yellow1600,
                            ),
                            Text(
                              "see more",
                                textScaler:
                                  const TextScaler.linear(Constants.factor),
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
                              textScaler:
                                  const TextScaler.linear(Constants.factor),
                              style: AppStyle.robotodark1,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.icCourse,
                              height: 30.h,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Test Papers",
                                textScaler:
                                  const TextScaler.linear(Constants.factor),
                              style: AppStyle.robotodark1,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.icTest,
                              height: 30.h,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Results",
                                textScaler:
                                  const TextScaler.linear(Constants.factor),
                              style: AppStyle.robotodark1,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.icResult,
                              height: 30.h,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Online textbooks",
                                textScaler:
                                  const TextScaler.linear(Constants.factor),
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
                  SizedBox(
                    height: 25.h,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 6.0,
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
          );
        },
      ),
    );
  }
}
