import 'package:flutter/material.dart';
import 'package:flutter_login_simple/utils/auth_provider.dart';

import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("build login screen");
    final TextEditingController userController = TextEditingController();
    final TextEditingController passController = TextEditingController();

    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.teal,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Authentication",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              const SizedBox(
                height: 20,
              ),
              //todo add controller parameter
              TextFormField(
                controller: userController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("username")),
              ),
              const SizedBox(
                height: 20,
              ),

              //todo add controller parameter
              TextFormField(
                controller: passController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("password")),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      print(
                          "pressed login: ${userController.text} & ${passController.text}");

                      authProvider.login(
                          username: userController.text,
                          password: passController.text);
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.tealAccent)),
                    child: const Text("LOGIN")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
