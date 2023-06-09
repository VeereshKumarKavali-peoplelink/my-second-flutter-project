import 'package:flutter/material.dart';

class MyDropDownPage extends StatefulWidget {
  const MyDropDownPage({super.key});

  @override
  State<MyDropDownPage> createState() => _MyDropDownPageState();
}

class _MyDropDownPageState extends State<MyDropDownPage> {
  var countriesList = ["select country", "India", "China", "Sri Lanka"];
  var selectedItem = "select country";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Center(
              child: DropdownButton(
                  value: selectedItem,
                  items: countriesList.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (item) {
                    print('Selected $item');
                    setState(() {
                      selectedItem = item!;
                    });
                  })),
        ]));
  }
}
