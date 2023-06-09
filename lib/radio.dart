import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyRadioPage extends StatefulWidget {
  const MyRadioPage({super.key});

  @override
  State<MyRadioPage> createState() => _MyRadioPageState();
}

class _MyRadioPageState extends State<MyRadioPage> {
  int selectedPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Radio(value: 0, groupValue: selectedPosition, onChanged: (val){print("Selected $val"); setState(() {
          selectedPosition = val!;
        });}),
        Radio(value: 1, groupValue: selectedPosition, onChanged: (val){print("Selected $val"); setState(() {
          selectedPosition = val!;
        });}),


        RadioListTile(value: 3, title: const Text("Male"), groupValue: selectedPosition, onChanged: (val){print("Selected $val"); setState(() {
          selectedPosition = val!;
        });}),
        RadioListTile(value: 4, title: const Text("Female"), groupValue: selectedPosition, onChanged: (val){print("Selected $val"); setState(() {
          selectedPosition = val!;
        });}),
      ],
    ));
  }
}
