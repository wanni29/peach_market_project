import 'package:flutter/material.dart';

class MyLeading extends StatelessWidget {
  const MyLeading({
    Key? key,
    required this.city,
  }) : super(key: key);

  final String city;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: () {},
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Text(
            "${city}",
            style: TextStyle(fontSize: 14),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 10,
          ),
        ]),
      ),
    );
  }
}
