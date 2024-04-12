import 'package:get/get.dart';
import 'package:gyansanchar/presentation/schedule/controller/schedule_screen_controller.dart';

class ScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleController());
  }
}