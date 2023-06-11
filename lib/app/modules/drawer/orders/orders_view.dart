// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sheryan/app/core/models/order_model.dart';
import 'package:sheryan/app/core/theme/colors.dart';

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
        onRetryFunction: controller.getOrders,
        builder: (widgetState, controller) {
          return ListView.separated(
            padding: const EdgeInsets.all(20),
            itemCount: controller.orders.length,
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
            itemBuilder: (context, index) {
              Order order = controller.orders[index];
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.secondryBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const Icon(
                    Icons.directions_bus_outlined,
                    color: AppColors.font,
                  ),
                  subtitle:
                      Text(DateFormat("yyyy-MM-dd").format(order.createdAt)),
                  title: Text(order.pathologicalCase.name),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
