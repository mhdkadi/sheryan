import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
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
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "username",
                  style: TextStyle(fontSize: 25),
                ),
                hintText: "Enter username",
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Password",
                  style: TextStyle(fontSize: 25),
                ),
                hintText: "Enter Password",
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Enter",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
