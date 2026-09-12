import 'package:flutter/material.dart';
import 'package:groceries_app_ui/features/authentication/presentation/screens/splash.dart';
import 'package:groceries_app_ui/features/authentication/presentation/screens/login_screen.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
