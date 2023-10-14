import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true, // 아이콘 밑에 레이블을 표시할래?
      showUnselectedLabels: true,
      selectedItemColor: Color.fromRGBO(255, 149, 135, 1),
      unselectedItemColor: Colors.white38,

      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.home),
          label: "홈", // icon 과 label 값은 시그니처기때문에 무조건 넣어야 에러가 안뜬다.
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.newspaper),
          label: "동네생활",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.facebookMessenger),
          label: "채팅",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.appleAlt),
          label: "나의피치",
        )
      ],
    );
  }
}
