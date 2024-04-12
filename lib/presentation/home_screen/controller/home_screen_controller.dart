import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/assignment/assignment_screen.dart';
import 'package:gyansanchar/presentation/schedule/schedule_screen.dart';
import 'package:gyansanchar/presentation/widgets/custom_image_view.dart';
import 'package:gyansanchar/theme/app_style.dart';

class HomeController extends GetxController {
  final consumerData = GetStorage();
   int selectedContainerIndex = 0;

  List<Widget> containerData = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.icSyllabus,
          height: 30.h,
        ),
        Text(
          "Syllabus",
          style: AppStyle.ralewaywhite,
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.icSchedule,
          height: 30.h,
        ),
        Text(
          "Schedule",
          style: AppStyle.ralewayblack,
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.icAssignments,
          height: 30.h,
        ),
        Text(
          "Assignments",
          style: AppStyle.ralewayblack,
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.icTests,
          height: 30.h,
        ),
        Text(
          "Tests",
          style: AppStyle.ralewaywhite,
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.icAttendence,
          height: 30.h,
        ),
        Text(
          "Attendence",
          style: AppStyle.ralewaywhite,
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.icExtra,
          height: 30.h,
        ),
        Text(
          "Extra",
          style: AppStyle.ralewayblack,
        ),
      ],
    ),
  ];
  void onContainerTapped(int index) {
    selectedContainerIndex = index;
    switch (index) {
      case 1:
        Get.to(() => ScheduleScreen());
        break;
      case 2:
        Get.to(() => AssignmentScreen());
        break;
      default:
        break;
    }
  }
}
