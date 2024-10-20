// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
    super.key,
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 0.5), //(x,y)
                  blurRadius: 5,
                ),
              ],
            ),
            height: 50,
            child: Row(
              children: [
                Expanded(
                  // This ensures that the TextFormField takes up the available space
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
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: kMainColor, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: kMainColor, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kBlue, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
