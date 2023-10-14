import 'package:flutter/material.dart';

class MyActionIcon extends StatelessWidget {
  const MyActionIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: IconButton(onPressed: () {}, icon: Icon(icon)),
    );
  }
}
