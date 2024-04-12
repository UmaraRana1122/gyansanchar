import 'package:get/get.dart';
import 'package:gyansanchar/core/app_export.dart';

class AssignmentController extends GetxController {
  int selectedIndex = 0;
  int selectedIndex1 = 0;
  final TextEditingController urlController = TextEditingController();
  final TextEditingController noteController = TextEditingController();


  List<String> titles = ['Home', 'My Courses', 'Blogs', 'My Profile'];
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  TimeOfDay? repeatTime;

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }

  void onDateTapped(DateTime date) {
    selectedDate = date;
    update();
  }

  void onTimeTapped(TimeOfDay time) {
    selectedTime = time;
    update();
  }

  List<String> times = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '1:00 PM',
    '2:00 PM',
    '3:00 PM',
    '4:00 PM',
    '5:00 PM',
  ];
  void onRepeatTimeTapped(TimeOfDay time) {
    repeatTime = time;
    update();
  }
}
