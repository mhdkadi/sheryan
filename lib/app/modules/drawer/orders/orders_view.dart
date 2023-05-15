// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/widget_state.dart';
import 'orders_controller.dart';

class OrdersView extends GetView<OrdersController> {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "الطلبات السابقة",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: StateBuilder<OrdersController>(
        id: "OrdersView",
        builder: (widgetState, controller) {
          return const Center(child: SizedBox());
        },
      ),
    );
  }
}
