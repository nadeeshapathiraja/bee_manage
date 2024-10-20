import 'package:beetracker/componets/custom_appbar.dart';
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

  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          CustomBG(size: size),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(text: "Add Hive Details"),
                    CustomFormField(
                      lable: "Hive Name",
                      controller: _email,
                    ),
                    CustomFormField(
                      lable: "Hive Location",
                      controller: _email,
                    ),
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
