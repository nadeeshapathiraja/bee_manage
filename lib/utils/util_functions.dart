import 'package:flutter/material.dart';

import '../componets/custom_text.dart';
import 'colors.dart';

class UtilFunctions {
  //navigation function
  static void navigateTo(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  //go back function
  static goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  //push and remove navigation function
  static pushRemoveNavigation(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => widget), (route) => false);
  }

//Show Snackbar
  static showSnackbar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: kMainColor,
        content: CustomText(
          text: text,
          textAlign: TextAlign.center,
          color: kWhite,
        ),
      ),
    );
  }

  static refreshNav(BuildContext context, Widget widget) async {
    // await Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => widget),
    // ).then(
    //   (value) => setState(() {

    //   }),
    // );
  }
  // static animateNavigation(BuildContext context, Widget widget) {
  //   Navigator.of(context).push(
  //     TurnPageRoute(
  //       overleafColor: bgColor2,
  //       turningPoint: 0.6,
  //       transitionDuration: const Duration(milliseconds: 500),
  //       builder: (context) => widget,
  //     ),
  //   );
  // }
}
