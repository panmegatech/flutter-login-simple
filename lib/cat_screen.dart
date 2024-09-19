import 'package:flutter/material.dart';
import 'package:flutter_login_simple/widgets/logout_box.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cat Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("logout pressed!");
                showDialog(
                  context: context,
                  builder: (context) => const LogoutBox(),
                );
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: const Center(
        child: Text(
          "Cat Screen",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
