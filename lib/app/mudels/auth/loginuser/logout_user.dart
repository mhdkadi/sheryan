import 'package:flutter/material.dart';

class logout_user extends StatelessWidget {
  const logout_user({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Logout"),
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
            const SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Are you sure to logout ?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
            Row(
              children: [
                Center(
                  child: SizedBox(
                    width: 120,
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
                    width: 120,
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
          ],
        ),
      ),
    );
  }
}





















//Row(
//             children: const [
//             Text("data"),
//           Icon(Icons.notification_add),
//             ],
//           ),


//ListTile()
//  onTap: () {},
//  leading: Icon(Icons.add),
//  title: Text('Add'),
//);