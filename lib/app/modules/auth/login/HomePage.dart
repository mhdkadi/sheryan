import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Elevated Button"),
        backgroundColor: Colors.redAccent, //background color of app bar
      ),
      body: Center(
        child: SizedBox(
          height: 100, //height of button
          width: 300, //width of button
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 255, 255, 255), //background color of button
                side: const BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 82, 177, 255),
                ),
                //border width and color
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(30)),
                padding:
                    const EdgeInsets.all(20) //content padding inside button
                ),
            onPressed: () {}
            //code to execute when this button is pressed.
            ,
            child: const Text(
              '*****************',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
