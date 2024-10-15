import 'package:beetracker/utils/colors.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

// ignore: must_be_immutable
class CustomInput extends StatelessWidget {
  CustomInput({
    super.key,
    required this.controller,
    required this.lableText,
    this.iconBtn,
    this.isObsecure = false,
    this.inputType = TextInputType.text,
    this.hintText,
    this.icon,
    this.fontsize = 14,
  });

  TextEditingController controller = TextEditingController();
  final String lableText;
  final IconButton? iconBtn;
  final bool isObsecure;
  final TextInputType inputType;
  final String? hintText;
  final IconData? icon;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              CustomText(
                text: lableText,
                fontSize: fontsize!,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 50,
            child: TextFormField(
              controller: controller,
              obscureText: isObsecure,
              keyboardType: inputType,
              style: const TextStyle(
                fontSize: 14,
                color: kBlack,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: Icon(
                  size: 20,
                  icon,
                  color: kBlack,
                ),
                suffixIcon: iconBtn,
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
