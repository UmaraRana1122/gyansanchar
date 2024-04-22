import 'package:get/get.dart';
import 'package:gyansanchar/core/app_export.dart';

class AttendanceController extends GetxController {
  RxInt selectedIndex = RxInt(0);
  int newIndex = 0;

  Map<int, String> studentStatus = {};

  @override
  void onInit() {
    super.onInit();
    for (int i = 1; i <= 8; i++) {
      studentStatus[i] = 'P';
    }
  }

  List<String> titles = ["Home", "My Course", "Blog", "Profile"];

  void onItemTapped(int index) {
    newIndex = index; 
    update();
  }
   Rx<DateTime?> selectedDate = Rx<DateTime?>(null);
final List<String> AllCategory = [
    'Accessories',
    'Electronics',
  ];
String? selectedValue;

  void updateIndex(int index) {
    selectedIndex.value = index;
  }

  String getSelectedStatus(int studentId) {
    return studentStatus[studentId] ?? 'P';
  }

  void updateSelectedStatus(int studentId, String status) {
    studentStatus[studentId] = status;
    update();
  }

  void submitData() {
    print('Data submitted!');
  }
}
