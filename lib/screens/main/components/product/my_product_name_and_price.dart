import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_peach_market_app/constants.dart';

class MyProductNameAndPrice extends StatelessWidget {
  const MyProductNameAndPrice({
    Key? key,
    required this.productName,
    required this.productSubName,
    required this.productPrice,
  }) : super(key: key);

  final String productName;
  final String productSubName;
  final int productPrice;
  @override
  Widget build(BuildContext context) {
    // 숫자 포맷팅을 위한 NumberFormat 객체 생성
    final numberFormat = NumberFormat("#,##0");

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${productName}",
            style: TextStyle(fontSize: 16, color: kTextLightColor),
          ),
          Text(
            "${productSubName}",
            style: TextStyle(fontSize: 14, color: kDarkColor),
          ),
          Text(
            "${numberFormat.format(productPrice)}원", // 숫자 포맷팅 적용
            style: TextStyle(fontSize: 20, color: kTextLightColor),
          )
        ],
      ),
    );
  }
}
