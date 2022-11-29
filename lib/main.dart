import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'model/menu.dart';
import 'screens/Shop.dart';
import 'login.dart/login_welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BPQ Hub',
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
