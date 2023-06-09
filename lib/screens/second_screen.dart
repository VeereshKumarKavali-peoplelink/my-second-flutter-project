import 'package:flutter/material.dart';


// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  String text;

  SecondScreen(this.text, {super.key});

  //SecondScreen(String s, {super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Container(alignment: Alignment.center, child: Column(
        children: [Text("Message from first screen ---> $text", style: const TextStyle(fontSize: 30)), const SizedBox(height: 50),
          ElevatedButton(onPressed: (){Navigator.pop(context);}, child: const Text("Go to first screen")),
        ],
      ))
    );
  }
}