import 'package:flutter/material.dart';

class admin_order extends StatelessWidget {
  const admin_order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            const SizedBox(height: 15),
            Image.asset(
              "assets/images/ambulance.png",
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text(
                  "Phone",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 17,
                ),
                Center(
                  child: SizedBox(
                    width: 280,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text(
                          "Username",
                          style: TextStyle(fontSize: 17),
                        ),
                        hintText: "Enter Number",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: const [
                Text(
                  "Address",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 12,
                ),
                Center(
                  child: SizedBox(
                    width: 275,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text(
                          "Address",
                          style: TextStyle(fontSize: 17),
                        ),
                        hintText: "Enter your Address",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Text(
                  "Status",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 17,
                ),
                Center(
                  child: SizedBox(
                    width: 280,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text(
                          "Status",
                          style: TextStyle(fontSize: 17),
                        ),
                        hintText: "Enter Status",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 90),
            Center(
              child: SizedBox(
                width: 130,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "send",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
