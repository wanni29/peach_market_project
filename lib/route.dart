import 'package:flutter/material.dart';
import 'package:project_peach_market_app/chating/chating_screen.dart';
import 'package:project_peach_market_app/communication/communication_screen.dart';
import 'package:project_peach_market_app/main/main_screen.dart';
import 'package:project_peach_market_app/mypeach/my_peach_screen.dart';
import 'package:project_peach_market_app/navi_screens.dart';

final Map<String, WidgetBuilder> route = {
  ChatingScreen.routeName: (context) => ChatingScreen(),
  CommunicationScreen.routeName: (context) => CommunicationScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  MyPeachScreen.routeName: (context) => MyPeachScreen(),

  // 바텀네비게이션바가 되는 루트
  NaviScreens.routeName: (context) => NaviScreens()
};
