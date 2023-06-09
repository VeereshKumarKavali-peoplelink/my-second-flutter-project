import 'package:flutter/material.dart';


class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  var list = const [Icon(Icons.home, color: Colors.green, size: 50.0), Icon(Icons.landscape, color: Colors.green, size: 50.0), Icon(Icons.laptop_chromebook, color: Colors.green, size: 50.0)];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: const Text("Tab Bar"), bottom: const  TabBar(tabs: [Tab(icon: Icon(Icons.home), text: "Home"), Tab(icon: Icon(Icons.landscape), text: "Land"), Tab(icon: Icon(Icons.laptop_chromebook), text: "Lap")])),
        body: TabBarView(children: list),
      ),
    );
  }
}