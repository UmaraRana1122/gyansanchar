import 'package:get/get.dart';

class PhyAssignmentController extends GetxController {
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
}
