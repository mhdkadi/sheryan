import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheryan/app/modules/login/login_binding.dart';
import 'package:sheryan/app/modules/login/login_view.dart';
import 'package:sheryan/app/modules/main_home/main_home_binding.dart';
import 'package:sheryan/app/modules/main_home/main_home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/login",
      getPages: [
        GetPage(
          name: "/mainHome",
          page: () => const MainHomeView(),
          binding: MainHomeBinding(),
        ),
        GetPage(
          name: "/login",
          page: () => const LoginView(),
          binding: LoginBinding(),
        ),
      ],
    );
  }
}
