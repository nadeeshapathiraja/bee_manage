import 'package:beetracker/componets/custom_appbar.dart';
import 'package:beetracker/componets/custom_dropdown_list.dart';
import 'package:beetracker/componets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../componets/custom_background.dart';
import '../../componets/custom_form_field.dart';

class AddHiveDetails extends StatefulWidget {
  const AddHiveDetails({super.key});

  @override
  State<AddHiveDetails> createState() => _AddHiveDetailsState();
}

class _AddHiveDetailsState extends State<AddHiveDetails> {
  final _email = TextEditingController();

  final List<String> items = [
    'A_Item1',
    'A_Item2',
    'A_Item3',
    'A_Item4',
    'B_Item1',
    'B_Item2',
    'B_Item3',
    'B_Item4',
  ];

  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          CustomBG(size: size),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomText(text: "Add Hive Details"),
                  CustomFormField(
                    lable: "Hive Name",
                    controller: _email,
                  ),
                  CustomFormField(
                    lable: "Hive Main Location",
                    controller: _email,
                  ),
                  CustomFormField(
                    lable: "Hive Address",
                    lines: 3,
                    height: 100,
                    controller: _email,
                  ),
                  CustomSearchDropdown(
                    items: items,
                    size: size.width,
                    selectedValue: selectedValue,
                  ),
                  CustomFormField(
                    lable: "Hive Address",
                    lines: 3,
                    height: 100,
                    controller: _email,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
