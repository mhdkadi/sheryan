import 'package:get/get.dart';
import 'package:sheryan/app/core/repositories/user_repository.dart';

class LoginController extends GetxController {
  final UserRepository userRepository;

  LoginController({required this.userRepository});
  Future<void> login({
    required String username,
    required String password,
  }) async {
    try {
      await userRepository.login(
        username: username,
        password: password,
      );
    } catch (e) {}
  }
}
