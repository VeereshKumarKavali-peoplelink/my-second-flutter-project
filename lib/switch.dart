import 'package:flutter/material.dart';

class MySwitchPage extends StatefulWidget {
  const MySwitchPage({super.key});

  @override
  State<MySwitchPage> createState() => _MySwitchPageState();
}

class _MySwitchPageState extends State<MySwitchPage> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch(
              value: status,
              onChanged: (val) {
                print("Switch status $status");
                setState(() {
                  status = val;
                });
              }),
          SwitchListTile(
              value: status,
              title: const Text("Switch"),
              subtitle:   Text("Switch Status $status"),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (val) {
                print("Switch status $status");
                setState(() {
                  status = val;
                });
              }),
          
        ],
      ),
    ));
  }
}
