import 'package:flutter/material.dart';

class MyProductImage extends StatelessWidget {
  const MyProductImage({
    Key? key,
    required this.productImage,
  }) : super(key: key);

  final String productImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage("assets/${productImage}"),
        height: 120,
      ),
    );
  }
}
