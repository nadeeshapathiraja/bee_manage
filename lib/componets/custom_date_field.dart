// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomDateField extends StatefulWidget {
  CustomDateField({
    Key? key,
    this.width,
    required this.lable,
    this.ontap,
    this.validator,
    required this.dateValue,
  }) : super(key: key);
  String? Function(String?)? validator;
  final double? width;
  final String dateValue;
  final String lable;
  final Function()? ontap;

  @override
  State<CustomDateField> createState() => _CustomDateFieldState();
}

class _CustomDateFieldState extends State<CustomDateField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            width: widget.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.lable,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          InkWell(
            onTap: widget.ontap,
            child: Container(
              height: 50,
              width: widget.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kGrey.withOpacity(0.08),
                border: Border.all(
                  color: kBlack,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.dateValue,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.today,
                      size: 30,
                      color: kBlack,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
