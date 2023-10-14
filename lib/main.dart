import 'package:flutter/material.dart';
import 'package:project_peach_market_app/my_theme.dart';
import 'package:project_peach_market_app/navi_screens.dart';
import 'package:project_peach_market_app/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: NaviScreens.routeName,
      routes: route,
    );
  }
}
