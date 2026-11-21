import 'package:flutter/material.dart';
import 'package:flutter_application_1grocery_eraa/screens/login_screen.dart';
import 'package:flutter_application_1grocery_eraa/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
