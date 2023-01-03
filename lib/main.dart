import 'package:flutter/material.dart';
import 'package:sheryan/app/modules/auth/login_admin/previous_orders_admin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PreviousOrdersAdmin(),
    );
  }
}
