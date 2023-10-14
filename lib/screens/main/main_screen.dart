import 'package:flutter/material.dart';
import 'package:project_peach_market_app/screens/main/components/appbar/my_action_icon.dart';
import 'package:project_peach_market_app/screens/main/components/appbar/my_leading.dart';
import 'package:project_peach_market_app/screens/main/components/product/my_product_image.dart';
import 'package:project_peach_market_app/screens/main/components/product/my_product_name_and_price.dart';
import 'package:project_peach_market_app/screens/main/components/product/my_stack_reply_and_like.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/main";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
                childCount: 10,
                (context, index) => Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 7.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: MyProductImage(productImage: "jake.jpeg"),
                        ),
                        Expanded(
                          flex: 3,
                          child: MyProductNameAndPrice(
                            productName: "제이크는 마법의 개에요!",
                            productSubName: "호그와트 마법학교 수석 졸업생",
                            productPrice: 1000000,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: MyStackReplyAndLike(
                              favoriteCount: 10, chatCount: 10),
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
    );
  }
}
