import 'package:flutter/material.dart';
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
                      height: 60.h,
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
                      height: 42.h,
                      width: 47.w,
                      decoration: BoxDecoration(
                        color: Color(0xffEBEEFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CustomImageView(
                          imagePath: ImageConstant.icBellIcon,
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
                Text(
                  "Recommendations for you",
                  style: AppStyle.poppins14Greyblue400,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Your Schedule",
                  style: AppStyle.roboto24Yellow1600,
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
                  height: 5.h,
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
