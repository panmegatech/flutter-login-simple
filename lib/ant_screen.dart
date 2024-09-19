import 'package:flutter/material.dart';
import 'package:flutter_login_simple/bee_screen.dart';
import 'package:flutter_login_simple/widgets/logout_box.dart';

class AntScreen extends StatelessWidget {
  const AntScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ant Screen",
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Ant Screen",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print("pressed: bee!");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BeeScreen(),
                      ));
                },
                style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.greenAccent)),
                child: const Text("Bee Screen"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
