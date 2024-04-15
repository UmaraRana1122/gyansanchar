import 'package:get/get.dart';
import 'package:gyansanchar/presentation/physics_assignment/controller/physics_assignment_controller.dart';

class PhyAssignmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhyAssignmentController());
  }
}
