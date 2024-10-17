import 'package:beetracker/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPlainText extends StatelessWidget {
  const CustomPlainText({
    super.key,
    required this.text,
    this.fontSize = 15,
    this.color = kBlack,
    this.fontWeight,
    this.textAlign,
    this.maxLine = 1,
    this.textOverflow = TextOverflow.ellipsis,
  });

  final String text;
  final int? maxLine;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: textOverflow,
      style: GoogleFonts.merriweather(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({
    super.key,
    required this.text,
    this.fontSize = 15,
    this.color = kBlack,
    this.fontWeight,
    this.textAlign,
    this.maxLine = 1,
    this.textOverflow = TextOverflow.ellipsis,
  });

  final String text;
  final int? maxLine;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: textOverflow,
      style: GoogleFonts.merriweather(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.text,
    this.fontSize = 15,
    this.color = kBlack,
    this.fontWeight,
    this.textAlign,
    this.maxLine = 1,
    this.textOverflow = TextOverflow.ellipsis,
  });

  final String text;
  final int? maxLine;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: textOverflow,
      style: GoogleFonts.merriweather(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
