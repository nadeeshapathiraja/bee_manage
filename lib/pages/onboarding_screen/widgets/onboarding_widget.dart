import 'package:flutter/material.dart';

import '../../../models/onboading_model.dart';
import '../../../utils/colors.dart';

class OBWidget extends StatefulWidget {
  const OBWidget({
    super.key,
    required this.dataModel,
  });
  final OnboardingScreenModel dataModel;

  @override
  State<OBWidget> createState() => _OBWidgetState();
}

class _OBWidgetState extends State<OBWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.dataModel.imgPath,
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            widget.dataModel.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 28,
              color: kBlack,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            widget.dataModel.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: kBlack,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
