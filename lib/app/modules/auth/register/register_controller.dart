import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sheryan/app/core/repositories/constants_repository.dart';
import 'package:sheryan/app/core/repositories/user_repository.dart';
import 'package:sheryan/app/core/services/location_service.dart';
import 'package:sheryan/app/core/services/notifications/firebase_cloud_messaging.dart';
import 'package:sheryan/app/modules/auth/auth_module.dart';

import '../../../core/services/getx_state_controller.dart';
import '../../../core/services/request_mixin.dart';

class RegisterController extends GetxStateController {
  final UserRepository userRepository;
  final ConstantsRepository constantsRepository;
  RegisterController({
    required this.userRepository,
    required this.constantsRepository,
  });

  Future<void> register({
    required String username,
    required String password,
    required String phoneNumber,
    required String fullName,
  }) async {
    await requestMethod(
      ids: ["RegisterView"],
      requestType: RequestType.getData,
      function: () async {
        final LatLng currentLocation =
            await LocationService.instance.getCurrentLocation();
        final String fcmToken =
            await NotificationService.instance.getFcmToken();
        await userRepository.register(
          username: username,
          password: password,
          phoneNumber: phoneNumber,
          fcmToken: fcmToken,
          fullName: fullName,
          currentLocation: currentLocation,
        );
        Get.offAllNamed(AuthModule.authInitialRoute);
        return null;
      },
    );
  }
}
