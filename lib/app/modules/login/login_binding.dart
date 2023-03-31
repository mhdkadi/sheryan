import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sheryan/app/core/repositories/user_repository.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Dio(BaseOptions(
        contentType: "application/json",
        baseUrl: "http://192.168.165.78:3000",
        connectTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5))));
    Get.put(UserRepository(dio: Get.find<Dio>()));
  }
}
