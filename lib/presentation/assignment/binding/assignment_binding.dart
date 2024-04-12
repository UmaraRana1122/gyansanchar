import 'package:get/get.dart';
import 'package:gyansanchar/presentation/assignment/controller/assignment_controller.dart';

class AssignmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssignmentController());
  }
}
