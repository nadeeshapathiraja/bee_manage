import 'package:beetracker/utils/colors.dart';
import 'package:flutter/material.dart';

import 'custom_loader.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.height = 50,
    this.width = double.infinity,
    this.isLoading = false,
    this.fontColor = kWhite,
    this.fontSize = 17,
    this.color = kMainColor,
  });

  final Function() onTap;
  final String text;
  final double height;
  final double width;
  final bool isLoading;
  final Color fontColor;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: isLoading ? null : onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: isLoading
                ? const CustomLoader()
                : Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSize,
                      color: fontColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
