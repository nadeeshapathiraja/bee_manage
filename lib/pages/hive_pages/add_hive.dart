import 'package:bee_protect/componets/custom_appbar.dart';
import 'package:bee_protect/componets/custom_button.dart';
import 'package:bee_protect/componets/custom_date_field.dart';
import 'package:bee_protect/componets/custom_dropdown_list.dart';
import 'package:bee_protect/componets/custom_text.dart';
import 'package:bee_protect/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../componets/custom_background.dart';
import '../../componets/custom_form_field.dart';

class AddHiveDetails extends StatefulWidget {
  const AddHiveDetails({super.key});

  @override
  State<AddHiveDetails> createState() => _AddHiveDetailsState();
}

class _AddHiveDetailsState extends State<AddHiveDetails> {
  final TextEditingController hiveNameController = TextEditingController();
  final TextEditingController mainLocationController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController motherHiveController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  final List<String> hiveTypes = ['Langstroth', 'Top-bar'];
  final List<String> frameCounts =
      List.generate(50, (index) => (index + 1).toString());

  final List<String> conditions = ['Good', 'Bad', 'Moderate', 'Sacbof Virus'];
  final List<String> strengths = ['Weak', 'Moderate', 'Strong'];

  DateTime currentDate = DateTime.now();
  DateTime? startDatetime = DateTime.now();

  String? selectedHiveType;
  String? selectedFrameCount;
  String? selectedCondition;
  String? selectedStrength;

  @override
  void dispose() {
    hiveNameController.dispose();
    mainLocationController.dispose();
    addressController.dispose();
    motherHiveController.dispose();
    notesController.dispose();
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
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  const CustomText(
                    text: "Add Hive Details",
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                  const SizedBox(height: 10),
                  CustomFormField(
                    lable: "Hive Name",
                    controller: hiveNameController,
                  ),
                  CustomFormField(
                    lable: "Hive Main Location",
                    controller: mainLocationController,
                  ),
                  CustomFormField(
                    lable: "Hive Address",
                    lines: 3,
                    height: 100,
                    controller: addressController,
                  ),
                  CustomFormField(
                    lable: "Mother Hive",
                    controller: motherHiveController,
                  ),
                  CustomDateField(
                    lable: "Start Date",
                    dateValue: startDatetime != null
                        ? DateFormat('dd-MMM-yyyy').format(startDatetime!)
                        : DateFormat('dd-MMM-yyyy').format(currentDate),
                    ontap: () async {
                      DateTime? selectedDate = await showDatePicker(
                        context: context,
                        initialDate: currentDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                      );
                      if (selectedDate != null) {
                        setState(() {
                          startDatetime = selectedDate;
                        });
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSearchDropdown(
                        items: hiveTypes,
                        size: size.width * 0.46,
                        selectedValue: selectedHiveType,
                        title: "Hive Type",
                        onChanged: (value) {
                          setState(() {
                            selectedHiveType = value;
                          });
                        },
                      ),
                      CustomSearchDropdown(
                        items: frameCounts,
                        size: size.width * 0.41,
                        selectedValue: selectedFrameCount,
                        title: "Frame Count",
                        onChanged: (value) {
                          setState(() {
                            selectedFrameCount = value;
                          });
                        },
                      ),
                    ],
                  ),
                  CustomSearchDropdown(
                    items: strengths,
                    size: size.width * 0.9,
                    selectedValue: selectedStrength,
                    title: "Colony Strength",
                    onChanged: (value) {
                      setState(() {
                        selectedStrength = value;
                      });
                    },
                  ),
                  CustomSearchDropdown(
                    items: conditions,
                    size: size.width * 0.9,
                    selectedValue: selectedCondition,
                    title: "Current Condition",
                    onChanged: (value) {
                      setState(() {
                        selectedCondition = value;
                      });
                    },
                  ),
                  CustomFormField(
                    lable: "Notes",
                    lines: 3,
                    height: 100,
                    controller: notesController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        onTap: () {
                          hiveNameController.clear();
                          mainLocationController.clear();
                          addressController.clear();
                          motherHiveController.clear();
                          notesController.clear();
                          setState(() {
                            startDatetime = currentDate;
                            selectedHiveType = null;
                            selectedFrameCount = null;
                            selectedStrength = null;
                            selectedCondition = null;
                          });
                        },
                        text: "Clear",
                        width: size.width * 0.44,
                        color: kRed,
                      ),
                      CustomButton(
                        onTap: () {
                          // Add save logic here
                        },
                        text: "Save",
                        width: size.width * 0.44,
                      ),
                    ],
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
