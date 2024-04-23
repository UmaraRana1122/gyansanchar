import 'package:custom_check_box/custom_check_box.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/core/utils/color_constant.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/attendence/controller/attendence_controller.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:gyansanchar/theme/app_style.dart';
import 'package:intl/intl.dart';

class AttendanceScreen extends StatelessWidget {
  final AttendanceController controller = Get.put(AttendanceController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AttendanceController>(
      builder: (controller) {
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
                          "Attendance",
                          style: AppStyle.dmYellow1600,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          5,
                          (index) => GestureDetector(
                            onTap: () => controller.updateIndex(index),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                    color:
                                        controller.selectedIndex.value == index
                                            ? Color(0xffEBB12B)
                                            : Color(0xffB1B1B1),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Class ${index + 1}",
                                    style:
                                        controller.selectedIndex.value == index
                                            ? AppStyle.ralewayyellow13
                                            : AppStyle.ralewablack,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      child: Table(
                        border: TableBorder.all(color: Colors.grey),
                        children: [
                          // Header row
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Student Name',
                                      style: AppStyle.dmyellow1600,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Attendance',
                                      style: AppStyle.dmyellow1600,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Generate rows with blank rows
                          ...List.generate(10, (index) {
                            return [
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 11,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${index + 1}. Name Student',
                                          style: AppStyle.popinsblack11,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          controller.updateSelectedStatus(
                                              index, 'Present');
                                        },
                                        child: Text(
                                          "P",
                                          style: controller.getSelectedStatus(
                                                      index) ==
                                                  'Present'
                                              ? AppStyle.popinsgreen11
                                              : AppStyle.popinsblack11,
                                        ),
                                      ),
                                      CustomCheckBox(
                                        value: controller
                                                .getSelectedStatus(index) ==
                                            'Present',
                                        shouldShowBorder: true,
                                        borderColor: Colors.grey,
                                        uncheckedFillColor: Colors.transparent,
                                        uncheckedIconColor: Colors.transparent,
                                        checkedIconColor: Colors.white,
                                        checkedFillColor: ColorConstant.green,
                                        borderRadius: 4,
                                        borderWidth: .5,
                                        checkBoxSize: 18,
                                        onChanged: (val) {
                                          if (val) {
                                            controller.updateSelectedStatus(
                                                index, 'Present');
                                          }
                                        },
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.updateSelectedStatus(
                                              index, 'Leave');
                                        },
                                        child: Text(
                                          "L",
                                          style: controller.getSelectedStatus(
                                                      index) ==
                                                  'Leave'
                                              ? AppStyle.poppinsyellow
                                              : AppStyle.popinsblack11,
                                        ),
                                      ),
                                      CustomCheckBox(
                                        value: controller
                                                .getSelectedStatus(index) ==
                                            'Leave',
                                        shouldShowBorder: true,
                                        borderColor: Colors.grey,
                                        uncheckedFillColor: Colors.transparent,
                                        uncheckedIconColor: Colors.transparent,
                                        checkedIconColor: Colors.white,
                                        checkedFillColor: Colors.yellow,
                                        borderRadius: 4,
                                        borderWidth: .5,
                                        checkBoxSize: 18,
                                        onChanged: (val) {
                                          if (val) {
                                            controller.updateSelectedStatus(
                                                index, 'Leave');
                                          }
                                        },
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller.updateSelectedStatus(
                                              index, 'Absent');
                                        },
                                        child: Text(
                                          "A",
                                          style: controller.getSelectedStatus(
                                                      index) ==
                                                  'Absent'
                                              ? AppStyle.poppinsred
                                              : AppStyle.popinsblack11,
                                        ),
                                      ),
                                      CustomCheckBox(
                                        value: controller
                                                .getSelectedStatus(index) ==
                                            'Absent',
                                        shouldShowBorder: true,
                                        borderColor: Colors.grey,
                                        uncheckedFillColor: Colors.transparent,
                                        uncheckedIconColor: Colors.transparent,
                                        checkedIconColor: Colors.white,
                                        checkedFillColor: Colors.red,
                                        borderRadius: 4,
                                        borderWidth: .5,
                                        checkBoxSize: 18,
                                        onChanged: (val) {
                                          if (val) {
                                            controller.updateSelectedStatus(
                                                index, 'Absent');
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // Blank row
                              TableRow(
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ],
                              ),
                            ];
                          }).expand((element) => element),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Color(0xff8A8A8A))),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextField(
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: "15/12/2024",
                                      hintStyle: AppStyle.dmyelow,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 12),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        // Inside your build method
                        ElevatedButton(
                          onPressed: () async {
                            final DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2025),
                            );
                            if (pickedDate != null) {
                              // Update the selected date in the controller
                              controller.selectedDate.value = pickedDate;
                            }
                          },
                          child: Obx(() => Text(
                                controller.selectedDate.value != null
                                    ? DateFormat('dd/MM/yyyy')
                                        .format(controller.selectedDate.value!)
                                    : 'Select Date',
                                style: TextStyle(fontSize: 10),
                              )),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Color(0xFfFFF7E3),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              side: BorderSide(color: Color(0xff8A8A8A)),
                            ),
                          ),
                        ),

                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: ColorConstant.yellow1,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  color: ColorConstant.yellow1, width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: ColorConstant.white,
                                  fontSize: 10.5.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomNavigationBarItem(int index, String iconPath) {
    return InkWell(
      onTap: () => controller.onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: iconPath,
            height: 20.h,
            color: controller.newIndex == index
                ? Color(0xffEBB12B)
                : Color(0xff4B4B4B),
          ),
          SizedBox(height: 4.0),
          Text(
            controller.titles[index],
            style: TextStyle(
              color: controller.newIndex == index
                  ? Color(0xffEBB12B)
                  : Color(0xff4B4B4B),
              fontSize: 10.0.sp,
            ),
          ),
        ],
      ),
    );
  }
}
