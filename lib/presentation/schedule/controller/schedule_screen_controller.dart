import 'package:get/get.dart';

class ScheduleController extends GetxController {
  int selectedIndex = 0;
  int selectedIndex1 = 0;

  List<String> titles = ['Home', 'My Courses', 'Blogs', 'My Profile'];
  DateTime? selectedDate;

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }

  void onDateTapped(DateTime date) {
    selectedDate = date;
    update();
  }
}
