import 'package:get/get.dart';
import 'package:sheryan/app/modules/main_home/main_home_controller.dart';

class MainHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainHomeController());
  }
}
