import 'package:get/get.dart';
import 'package:gyansanchar/presentation/course/controller/course_controller.dart';

class CourseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CourseController());
  }
}
