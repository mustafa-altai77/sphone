import 'package:flutter/material.dart';
class myTitle extends StatelessWidget {
  const myTitle({
    super.key,
    required this.title,
    required this.size,
    required this.color,
    required this.fontWeight,
  });

  final String title;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      style: TextStyle(
          color:color,
          fontSize: size,
          fontWeight: fontWeight),
    );
  }
}
