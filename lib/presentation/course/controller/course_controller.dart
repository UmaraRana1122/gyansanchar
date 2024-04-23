import 'package:get/get.dart';
import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/presentation/widgets/course/course_widget.dart';
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
    courseWidget("Physics 211",   "Courtney Henry", Colors.white, Colors.white),
    courseWidget(
        "Physics 211", "Prof. Andrew Grey ", Colors.black, Colors.black),
    courseWidget(
        "Physics 211",    "Kristin Watson", Colors.black, Colors.black),
    courseWidget(
        "Physics 211", "Ronald Richards", Colors.white, Colors.white),
    courseWidget(
        "Physics 211", "Floyd Miles", Colors.white, Colors.white),
    courseWidget(
        "Physics 211",    "Esther Howard", Colors.black, Colors.black),

   
   
   
 
  ];
}
