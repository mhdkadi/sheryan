import 'package:get/get.dart';
import 'package:sheryan/app/core/repositories/constants_repository.dart';

import 'orders_controller.dart';

class OrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      OrdersController(constantsRepository: Get.find<ConstantsRepository>()),
    );
  }
}
