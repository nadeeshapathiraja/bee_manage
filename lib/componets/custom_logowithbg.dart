import 'package:flutter/material.dart';

import '../utils/colors.dart';

class LogoWithBgWidget extends StatelessWidget {
  const LogoWithBgWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(100),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 5), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      width: 100,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(
          "assets/images/logo.png",
          // width: 400,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
