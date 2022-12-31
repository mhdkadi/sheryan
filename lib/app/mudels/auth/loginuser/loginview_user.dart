import 'package:flutter/material.dart';

class loginview_user extends StatelessWidget {
  const loginview_user({super.key});

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
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 40),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "username",
                  style: TextStyle(fontSize: 20),
                ),
                hintText: "Enter username",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 20),
                ),
                hintText: "Enter Phone Number",
              ),
            ),
            const SizedBox(height: 40),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Address",
                  style: TextStyle(fontSize: 20),
                ),
                hintText: "Enter Address ",
              ),
            ),
            const SizedBox(height: 100),
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
