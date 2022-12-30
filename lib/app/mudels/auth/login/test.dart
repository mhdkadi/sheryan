import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Order"),
        centerTitle: true,
      ),
      body: Container(
          child: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'assets/ambulance.png',
                  width: 110.0,
                  height: 100.0,
                  fit: BoxFit.fill,
                ),
              ),
              const Spacer(flex: 1),
              Expanded(
                child: Image.asset(
                  'assets/notification.png',
                  width: 110.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
