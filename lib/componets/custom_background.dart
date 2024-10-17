import 'package:flutter/material.dart';

class CustomBG extends StatelessWidget {
  const CustomBG({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Image.asset(
        "assets/images/bg.jpg",

        // width: 400,
        fit: BoxFit.cover,
      ),
    );
  }
}
