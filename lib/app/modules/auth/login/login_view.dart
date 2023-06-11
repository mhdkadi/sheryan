import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sheryan/app/core/services/size_configration.dart';
import 'package:sheryan/app/core/theme/colors.dart';
import 'package:sheryan/app/core/widgets/elevated_button.dart';
import 'package:sheryan/app/core/widgets/input_fields.dart';
import 'package:sheryan/app/modules/auth/shared/constant/auth_routes.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/widgets/widget_state.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  final loginForm = FormGroup({
    "username": FormControl<String>(
      validators: [
        Validators.required,
        Validators.maxLength(40),
      ],
    ),
    "password": FormControl<String>(
      validators: [
        Validators.required,
        Validators.maxLength(40),
      ],
    ),
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "تسجيل دخول المستخدم",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: ScreenSizer(
          constWidth: 50,
          builder: (CustomSize customSize) {
            return StateBuilder<LoginController>(
              id: "LoginView",
              disableState: true,
              initialWidgetState: WidgetState.loaded,
              builder: (widgetState, controller) {
                return ReactiveForm(
                  formGroup: loginForm,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        const Icon(
                          Icons.screen_lock_portrait_outlined,
                          size: 200,
                          color: AppColors.secondry,
                        ),
                        const SizedBox(height: 40),
                        HeaderTextField(
                          widgetState: widgetState,
                          formControlName: "username",
                          hintText: "أدخل اسم المستخدم",
                          header: "اسم المستخدم",
                          maxLength: 40,
                          keyboardType: TextInputType.name,
                          validationMessages: {
                            ValidationMessage.required: (_) =>
                                "أدخل اسم المستخدم",
                            ValidationMessage.maxLength: (_) =>
                                "اسم المستخدم طويل جداً",
                          },
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 20),
                        HeaderTextField(
                          widgetState: widgetState,
                          formControlName: "password",
                          hintText: "أدخل كلمة المرور",
                          header: "كلمة المرور",
                          maxLength: 40,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          validationMessages: {
                            ValidationMessage.required: (_) =>
                                "أدخل كلمة المرور",
                            ValidationMessage.maxLength: (_) =>
                                "كلمة المرور طويلة جداً",
                          },
                          textInputAction: TextInputAction.done,
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: ElevatedStateButton(
                            widgetState: widgetState,
                            onPressed: () {
                              if (loginForm.valid) {
                                FocusScope.of(context).unfocus();
                                controller.login(
                                  username:
                                      loginForm.value["username"].toString(),
                                  password:
                                      loginForm.value["password"].toString(),
                                );
                              } else {
                                loginForm.markAllAsTouched();
                              }
                            },
                            child: const Text(
                              "دخول",
                              style: TextStyle(
                                color: AppColors.background,
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "ليس لديك حساب؟  ",
                              overflow: TextOverflow.ellipsis,
                            ),
                            InkWell(
                              onTap: widgetState == WidgetState.loading
                                  ? null
                                  : () {
                                      Get.toNamed(AuthRoutes.registerRoute);
                                    },
                              child: const Text(
                                'إنشاء حساب',
                                style: TextStyle(color: AppColors.path),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text("أو"),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.secondryBackground2,
                            ),
                            onPressed: () {
                              launchUrl(Uri.parse('tel://0936594895'));
                            },
                            child: const Text(
                              "اتصال بالدعم",
                              style: TextStyle(
                                color: AppColors.font,
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
