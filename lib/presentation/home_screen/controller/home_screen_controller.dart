import 'package:gyansanchar/core/app_export.dart';
import 'package:gyansanchar/core/utils/image_constant.dart';
import 'package:gyansanchar/presentation/assignment/assignment_screen.dart';
import 'package:gyansanchar/presentation/schedule/schedule_screen.dart';
import 'package:gyansanchar/presentation/widgets/home/grid_widget.dart';

class HomeController extends GetxController {
  final consumerData = GetStorage();
  int selectedContainerIndex = 0;

  List<Widget> containerData = [
    gridWidget(ImageConstant.icSyllabus, "Syllabus", Colors.white),
    gridWidget(ImageConstant.icSchedule, "Schedule", Colors.black),
    gridWidget(ImageConstant.icAssignments, "Assignments", Colors.black),
    gridWidget(ImageConstant.icTests, "Tests", Colors.white),
    gridWidget(ImageConstant.icAttendence, "Attendence", Colors.white),
    gridWidget(ImageConstant.icExtra, "Extra", Colors.black),
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
