import 'package:flutter/material.dart';
import 'package:flutter_login_simple/ant_screen.dart';
import 'package:flutter_login_simple/bee_screen.dart';
import 'package:flutter_login_simple/cat_screen.dart';
import 'package:flutter_login_simple/widgets/logout_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("pressed: ant!");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AntScreen(),
                        ));
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.amber)),
                  child: const Text("Ant Screen"),
                ),
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("pressed: cat!");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CatScreen(),
                        ));
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.redAccent)),
                  child: const Text("Cat Screen"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
