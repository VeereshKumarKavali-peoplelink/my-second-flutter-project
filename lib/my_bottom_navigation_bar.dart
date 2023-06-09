import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentPosition= 0;
  var list = const ["Home", "Store", "Camera", "Wallet", "History"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation Bar")),
      body: Center(child: Text(list[_currentPosition], style: const TextStyle(color: Colors.green, fontSize: 20.0, fontWeight: FontWeight.bold))),  //style: TextStyle(color: Colors.green, fontSize: 20.0, fontWeight: FontWeight.bold)
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
        BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "History")
      ],
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      onTap: (index){
          setState(() {
            _currentPosition = index;
          });
      },

      currentIndex: _currentPosition,


      ),
    );
  }
}
