import 'package:flutter/material.dart';
import 'package:flutter_login_simple/utils/auth_provider.dart';
import 'package:provider/provider.dart';

class LogoutBox extends StatelessWidget {
  const LogoutBox({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return AlertDialog(
      title: const Text("Are you sure you want to log out?"),
      content: const Text(
          "A narrow wedge of light from a half-open service hatch framed a heap of discarded fiber optics and the chassis of a broken mirror bent and elongated as they fell."),
      actions: [
        ElevatedButton(
            onPressed: () {
              print("confirm logout");
              authProvider.logout();
              Navigator.popUntil(
                context,
                (route) => route.isFirst,
              );
            },
            child: const Text("Confirm"))
      ],
    );
  }
}
