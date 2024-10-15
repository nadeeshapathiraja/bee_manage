// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.icon,
    required this.lable,
    this.lines = 1,
    this.lenth,
    required this.controller,
    this.readonly = false,
    this.obscureText = false,
    this.inputType,
    this.prefixIcon,
    this.hintText,
    this.fontsize = 14,
  });

  final IconData? icon;
  final String lable;
  final int lines;
  final int? lenth;
  final TextEditingController controller;
  final bool readonly;
  final bool obscureText;
  final TextInputType? inputType;
  final IconData? prefixIcon;
  final String? hintText;
  double fontsize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(height: 2),
          Row(
            children: [
              CustomText(
                text: lable,
                fontSize: fontsize,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 50,
            child: TextFormField(
              controller: controller,
              maxLines: lines,
              maxLength: lenth,
              readOnly: readonly,
              keyboardType: inputType,
              obscureText: obscureText,
              style: const TextStyle(
                fontSize: 14,
                color: kBlack,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: Icon(
                  size: 20,
                  prefixIcon,
                  color: kBlack,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: kGrey, width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                fillColor: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
