// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whats_app_ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

//designing the UI of WhatsApp

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomeScreen(),
    );
  }
}
