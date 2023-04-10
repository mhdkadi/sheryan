import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheryan/app/modules/login/login_controller.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text("تسجيل الدخول"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            const SizedBox(height: 30),
            Image.asset(
              "assets/images/ambulance.png",
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 30),
            TextField(
              controller: userNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "الاسم",
                  style: TextStyle(fontSize: 25),
                ),
                hintText: "أدخل الاسم",
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "كلمة المرور",
                  style: TextStyle(fontSize: 25),
                ),
                hintText: "أدخل كلمة المرور",
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const SizedBox(height: 50),
            Center(
              child: SizedBox(
                width: 150,
                height: 50,
                child: GetBuilder<LoginController>(builder: (controller) {
                  return ElevatedButton(
                    onPressed: controller.isLoading
                        ? null
                        : () {
                            controller.login(
                              username: userNameController.text,
                              password: passwordController.text,
                            );
                          },
                    child: controller.isLoading
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
