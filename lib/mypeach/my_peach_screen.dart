import 'package:flutter/material.dart';

class MyPeachScreen extends StatelessWidget {
  static String routeName = "/peach";

  const MyPeachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("MyPeachScreen"),
      ),
    );
  }
}
