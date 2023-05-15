import 'package:sheryan/app/core/helpers/data_helper.dart';
import 'package:sheryan/app/core/models/order_model.dart';
import 'package:sheryan/app/core/repositories/constants_repository.dart';

import '../../../core/services/getx_state_controller.dart';
import '../../../core/services/request_mixin.dart';

class OrdersController extends GetxStateController {
  final ConstantsRepository constantsRepository;
  OrdersController({
    required this.constantsRepository,
  });
  @override
  void onInit() {
    getOrders();
    super.onInit();
  }

  List<Order> orders = [];

  Future<void> getOrders() async {
    await requestMethod(
      ids: ["OrdersView"],
      requestType: RequestType.getData,
      function: () async {
        orders =
            await constantsRepository.getOrders(userId: DataHelper.user!.id);

        return orders;
      },
    );
  }
}
