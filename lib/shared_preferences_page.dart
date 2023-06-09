import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedpreferencesPages extends StatelessWidget {
  MySharedpreferencesPages({super.key});
  final TextEditingController _editingController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {

    void saveDataInSP(String name) async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString("username", name);
      print("name saved in SP");
      //print(name);
      sharedPreferences.reload();
      //sharedPreferences.clear();
    //sharedPreferences.containsKey("username");
    }


    getDataFromSP()async{
          SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
          String username = sharedPreferences.getString("name") ?? "Dummy Name";
          _editingController.text = username;
    }




    getDataFromSP();
    return Scaffold(
        appBar: AppBar(title: const Text("Shared Preferences")),
        body: Column(
          children: [
            TextField(
              controller: _editingController,
              decoration: const InputDecoration(hintText: "Enter User Name"),
            ),
            ElevatedButton(
                onPressed: () async {
                  saveDataInSP(_editingController.text);
                },
                child: const Text("fetch and save data"))
          ],
        ));


        
  }
}
