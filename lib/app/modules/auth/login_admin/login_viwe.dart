import 'package:flutter/material.dart';

class login_viwe extends StatelessWidget {
  const login_viwe({super.key});

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
            const Center(
              child: SizedBox(
                width: 370,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      "Username",
                      style: TextStyle(fontSize: 17),
                    ),
                    hintText: "Enter Your Username",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: SizedBox(
                width: 370,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      "Number Phone",
                      style: TextStyle(fontSize: 17),
                    ),
                    hintText: "Enter Your Number Phone",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: SizedBox(
                width: 370,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      "Hospital",
                      style: TextStyle(fontSize: 17),
                    ),
                    hintText: "Enter Your Hospital",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "Address",
                  style: TextStyle(fontSize: 17),
                ),
                hintText: "Enter Your Address",
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: SizedBox(
                width: 370,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      "Password",
                      style: TextStyle(fontSize: 17),
                    ),
                    hintText: "Enter Your Password",
                  ),
                ),
              ),
            ),
            Row(
              children: const [Text("Forgot your password ?")],
            ),
            const SizedBox(height: 50),
            Center(
              child: SizedBox(
                width: 130,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
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
