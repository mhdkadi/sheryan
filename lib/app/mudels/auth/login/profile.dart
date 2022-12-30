import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Paramedic Profile"),
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
                  "UserName",
                  style: TextStyle(fontSize: 17),
                ),
                hintText: "**********",
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Phone number",
                  style: TextStyle(fontSize: 17),
                ),
                hintText: "********** ",
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Password",
                  style: TextStyle(fontSize: 17),
                ),
                hintText: "********** ",
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Hospital",
                  style: TextStyle(fontSize: 17),
                ),
                hintText: "********** ",
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
                    "Logout",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
