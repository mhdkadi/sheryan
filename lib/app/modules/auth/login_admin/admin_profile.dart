import 'package:flutter/material.dart';

class admin_profile extends StatelessWidget {
  const admin_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Admin Profile"),
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
            const Center(
              child: SizedBox(
                width: 370,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      "username",
                      style: TextStyle(fontSize: 17),
                    ),
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
                      "Password",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////////////////
            Row(
              children: const [Text("Forgot your password ?")],
            ),
            const SizedBox(height: 50),

            const Center(
              child: Text(
                "Are you sure to logout ?",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 17,
            ),

            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Center(
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Yes",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Center(
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "No",
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
            const SizedBox(
              height: 50,
            ),
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
          ],
        ),
      ),
    );
  }
}
