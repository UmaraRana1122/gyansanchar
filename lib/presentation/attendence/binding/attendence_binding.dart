import 'package:get/get.dart';
import 'package:gyansanchar/presentation/attendence/controller/attendence_controller.dart';


class AttendanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendanceController());
  }
}
