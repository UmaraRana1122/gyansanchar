import 'package:get/get.dart';
import 'package:gyansanchar/presentation/syllabus/controller/syllabus_controller.dart';

class SyllabusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SyllabusController());
  }
}
