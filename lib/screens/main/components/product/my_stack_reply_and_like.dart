import 'package:flutter/material.dart';

class MyStackReplyAndLike extends StatelessWidget {
  const MyStackReplyAndLike({
    Key? key,
    required this.favoriteCount,
    required this.chatCount,
  }) : super(key: key);

  final int favoriteCount;
  final int chatCount;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                "${favoriteCount}",
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
                "${chatCount}",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        )
      ],
    );
  }
}
