import 'package:flutter/material.dart';

class Responsive {
  //Check mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  //Check tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  //Check desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
