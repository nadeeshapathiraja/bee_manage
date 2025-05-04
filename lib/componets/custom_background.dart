import 'package:flutter/material.dart';

class CustomBG extends StatelessWidget {
  const CustomBG({
    super.key,
    required this.size,
    this.link = "assets/images/bg.jpg",
  });

  final Size size;
  final String link;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Image.asset(
        link,
        fit: BoxFit.cover,
      ),
    );
  }
}
