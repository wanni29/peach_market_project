import 'package:flutter/material.dart';
import 'package:project_peach_market_app/screens/chating/chating_screen.dart';
import 'package:project_peach_market_app/screens/communication/communication_screen.dart';
import 'package:project_peach_market_app/screens/main/main_screen.dart';
import 'package:project_peach_market_app/screens/mypeach/my_peach_screen.dart';
import 'package:project_peach_market_app/screens/navi_screens.dart';

final Map<String, WidgetBuilder> route = {
  // 바텀네비게이션바에 등록되는 루트 목록
  ChatingScreen.routeName: (context) => ChatingScreen(),
  CommunicationScreen.routeName: (context) => CommunicationScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  MyPeachScreen.routeName: (context) => MyPeachScreen(),

  // 바텀네비게이션바가 되는 루트
  NaviScreens.routeName: (context) => NaviScreens()
};
