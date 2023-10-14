import 'package:flutter/material.dart';
import 'package:project_peach_market_app/chating/chating_screen.dart';
import 'package:project_peach_market_app/communication/communication_screen.dart';
import 'package:project_peach_market_app/main/main_screen.dart';
import 'package:project_peach_market_app/mypeach/my_peach_screen.dart';

import 'model/nav_item.dart';

class NaviScreens extends StatefulWidget {
  static String routeName = "/navi_screens";
  const NaviScreens({super.key});

  @override
  _NaviScreensState createState() => _NaviScreensState();
}

class _NaviScreensState extends State<NaviScreens> {
  int _selectedIndex = 0; // 디폴트값을 0을 지정해뒀기 때문에 처음에 그려지는 화면은 index = 0번 인거지 !
  List pages = [
    MainScreen(),
    CommunicationScreen(),
    ChatingScreen(),
    MyPeachScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: true, // 아이콘 밑에 레이블을 표시할래?
        showUnselectedLabels: true,
        selectedFontSize: 16,
        selectedItemColor: Color.fromRGBO(255, 149, 135, 1),
        unselectedItemColor: Colors.white38,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        items: List.generate(
          navItems.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(navItems[index].icon),
            label: navItems[index].label,
          ),
        ),
      ),
    );
  }
}
