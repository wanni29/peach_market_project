import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_peach_market_app/constants.dart';
import 'package:project_peach_market_app/main/components/my_action_icon.dart';
import 'package:project_peach_market_app/main/components/my_leading.dart';
import 'package:project_peach_market_app/my_theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyLeading(city: "신기동"),
        actions: [
          MyActionIcon(icon: Icons.search),
          MyActionIcon(icon: Icons.menu),
          MyActionIcon(icon: Icons.notifications),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 40,
                (context, index) => Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 7.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/jake.jpeg"),
                              height: 120,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "제이크는 마법의 개에요!",
                                  style: TextStyle(
                                      fontSize: 16, color: kTextLightColor),
                                ),
                                Text(
                                  "호그와트 마법학교 수석 졸업생",
                                  style: TextStyle(
                                      fontSize: 14, color: kDarkColor),
                                ),
                                Text(
                                  "9억 9천 9백만",
                                  style: TextStyle(
                                      fontSize: 20, color: kTextLightColor),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Stack(
                            children: [
                              Container(
                                color: Colors.transparent,
                                height: 120,
                              ),
                              Positioned(
                                bottom: 1, // 위에서 50 픽셀 아래로 이동
                                right: 1,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 14,
                                    ),
                                    Text(
                                      "10",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 1, // 위에서 50 픽셀 아래로 이동
                                left: -1,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      size: 14,
                                    ),
                                    Text(
                                      "10",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true, // 아이콘 밑에 레이블을 표시할래?
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,

        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: "홈", // icon 과 label 값은 시그니처기때문에 무조건 넣어야 에러가 안뜬다.
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.newspaper),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.appleAlt),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.facebookMessenger),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          )
        ],
      ),
    );
  }
}
