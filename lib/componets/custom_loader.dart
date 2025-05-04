import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();

    // const SpinKitFadingCircle(
    //   color: kGrey,
    //   size: 40,
    // );
  }
}
