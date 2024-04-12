import 'package:get/get.dart';
import 'package:gyansanchar/presentation/home_screen/controller/home_screen_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
