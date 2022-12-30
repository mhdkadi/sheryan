import 'package:flutter/material.dart';
import 'package:sheryan/app/mudels/auth/login/side_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: previous_orders(),
    );
  }
}
