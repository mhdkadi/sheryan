import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sheryan/app/core/repositories/user_repository.dart';

class LoginController extends GetxController {
  final UserRepository userRepository;

  LoginController({required this.userRepository});
  bool isLoading = false;
  Future<void> login({
    required String username,
    required String password,
  }) async {
    try {
      isLoading = true;
      update();
      await userRepository.login(
        username: username,
        password: password,
      );
      isLoading = false;
      update();
      Get.offAllNamed("/homePage");
    } catch (e) {
      isLoading = false;
      update();
      Fluttertoast.showToast(
        msg: e.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
