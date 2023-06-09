import 'package:flutter/material.dart';

class MyCheckboxPage extends StatefulWidget {
  const MyCheckboxPage({super.key});

  @override
  State<MyCheckboxPage> createState() => _MyCheckboxPageState();
}

class _MyCheckboxPageState extends State<MyCheckboxPage> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
            value: isChecked,
            onChanged: (val) {
              print("check $val");
              setState(() {
                isChecked = val!;
              });
            }),

        CheckboxListTile(
            value: false,
            title: const Text("Accept terms and conditions"),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (val) {
              print("check $val");
              setState(() {
                isChecked = val!;
              });
            }),

      ],
    ));
  }
}
