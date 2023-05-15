part of '../auth_module.dart';

class _AuthPages {
  _AuthPages._();

  static List<GetPage> authPages = [
    SecureGetPage(
      name: AuthRoutes.wrapperRoute,
      page: () => const WrapperView(),
      binding: WrapperBinding(),
      transition: Transition.fade,
    ),
    SecureGetPage(
      name: AuthRoutes.registerRoute,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
      transition: Transition.rightToLeft,
    ),
    SecureGetPage(
      name: AuthRoutes.loginRoute,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
