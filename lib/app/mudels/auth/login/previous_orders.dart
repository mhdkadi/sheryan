import 'package:flutter/material.dart';

class previous_orders extends StatelessWidget {
  const previous_orders({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Previous Orders"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Center(
              child: Row(
                children: const [Text("Patient Name")],
              ),
            ),
            Row(
              children: const [
                Text("NumberPhone"),
                SizedBox(width: 20),
                Text("Stauts"),
                SizedBox(width: 20),
                Text("Address")
              ],
            )
          ],
        ));
  }
}
