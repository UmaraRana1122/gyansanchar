import 'package:get/get.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/theme/app_style.dart';

class CourseController extends GetxController {
  int selectedIndex = 0;
  int selectedCourseIndex = 0;
  DateTime? selectedDate;

  List<String> titles = ["Home", "My Course", "Blog", "Profile"];

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }

  void onDateTapped(DateTime date) {
    selectedDate = date;
    update();
  }

  List<Widget> containerData = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Physics 211",
            style: AppStyle.ralewaywhite1111,
          ),
          Text(
            "Prof.  Andrew Grey",
            style: AppStyle.ralewaywhite111,
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Physics 211",
            style: AppStyle.ralewayblackk1,
          ),
          Text(
            "Kristin Watson",
            style: AppStyle.ralewayblackk11,
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Physics 211",
            style: AppStyle.ralewayblackk1,
          ),
          Text(
            "Ronald Richards",
            style: AppStyle.ralewayblackk11,
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Physics 211",
            style: AppStyle.ralewaywhite1111,
          ),
          Text(
            "Floyd Miles",
            style: AppStyle.ralewaywhite111,
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Physics 211",
            style: AppStyle.ralewaywhite1111,
          ),
          Text(
            "Courtney Henry",
            style: AppStyle.ralewaywhite111,
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Physics 211",
            style: AppStyle.ralewayblackk1,
          ),
          Text(
            "Esther Howard",
            style: AppStyle.ralewayblackk11,
          ),
        ],
      ),
    ),
  ];
}
