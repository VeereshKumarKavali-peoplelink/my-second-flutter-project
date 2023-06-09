import 'package:flutter/material.dart';

class MyDrawerLayout extends StatefulWidget {
  const MyDrawerLayout({super.key});

  @override
  State<MyDrawerLayout> createState() => _MyDrawerLayoutState();
}

class _MyDrawerLayoutState extends State<MyDrawerLayout> {
  var list =  const [ Center(child: Text("Home")),Center(child: Text("Sign In")),Center(child: Text("Sign out")),];
  var _currentItemSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Drawer Layout")),
        body: list[_currentItemSelected],
        drawer: Drawer(
          child: ListView(
            children:  [
              DrawerHeader(padding: EdgeInsets.zero, margin:  EdgeInsets.zero ,child: Container(alignment: Alignment.center, color: Colors.blue, child: const Text( "Programming తెలుగులో", style: TextStyle( color: Colors.white, fontSize: 30.0))),),
            ListTile(title: const Text("Home"), leading: const Icon(Icons.home), onTap: (){ setState(() {
              _currentItemSelected = 0;
            }); Navigator.pop(context);}),
             ListTile(title: const Text("Sign In"), leading: const Icon(Icons.access_time), onTap: (){ setState(() {
               _currentItemSelected = 1;
             }); Navigator.pop(context);}),
             ListTile(title: const Text("Sign Out"), leading: const Icon(Icons.local_activity), onTap: (){setState(() {
               _currentItemSelected = 2;
             }); Navigator.pop(context);})
            ],
          ),
        ));
  }
}
