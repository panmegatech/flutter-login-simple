import 'package:flutter/material.dart';
import 'package:flutter_login_simple/home_screen.dart';
import 'package:flutter_login_simple/login_screen.dart';
import 'package:flutter_login_simple/utils/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => AuthProvider(), child: const MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends State {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final authProvider = Provider.of<AuthProvider>(context, listen: false);
        authProvider.checkLogin();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: true);
    if (authProvider.isLoading) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(
              color: Colors.teal,
            ),
          ),
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: authProvider.isLogin ? const HomeScreen() : LoginScreen(),
    );
  }
}
