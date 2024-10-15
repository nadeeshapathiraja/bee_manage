import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedcustomeLoader extends StatefulWidget {
  const AnimatedcustomeLoader({key}) : super(key: key);

  @override
  _AnimatedcustomeLoaderState createState() => _AnimatedcustomeLoaderState();
}

class _AnimatedcustomeLoaderState extends State<AnimatedcustomeLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  // ignore: non_constant_identifier_names
  late Animation<double> animation_rotation;
  // ignore: non_constant_identifier_names
  late Animation<double> animation_radius_in;
  // ignore: non_constant_identifier_names
  late Animation<double> animation_radius_out;

  final double initialradius = 30.0;
  double radius = 0.0;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation_rotation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 1.0, curve: Curves.linear)));
    animation_radius_in = Tween<double>(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.75, 1.0, curve: Curves.elasticIn)));
    animation_radius_out = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25, curve: Curves.elasticInOut)));
    controller.addListener(() {
      setState(() {
        if (controller.value >= 0.75 && controller.value <= 1.0) {
          radius = animation_radius_in.value * initialradius;
        } else if (controller.value >= 0.0 && controller.value <= 0.25) {
          radius = animation_radius_out.value * initialradius;
        }
      });
    });
    controller.repeat();
    //controller.dispose();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      width: 100.00,
      height: 100,
      child: Center(
          child: RotationTransition(
        turns: animation_rotation,
        child: Stack(
          children: [
            Dot(
              radius: 30.0,
              color: Colors.black12,
            ),
            Transform.translate(
              offset: Offset(radius * cos(pi / 4), radius * sin(pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.red,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(2 * pi / 4), radius * sin(2 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.red,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(3 * pi / 4), radius * sin(3 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.red,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(4 * pi / 4), radius * sin(4 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.red,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(5 * pi / 4), radius * sin(5 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.red,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(6 * pi / 4), radius * sin(6 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.red,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(7 * pi / 4), radius * sin(7 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.red,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(8 * pi / 4), radius * sin(8 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.red,
              ),
            )
          ],
        ),
      )),
    );
  }
}

class Dot extends StatelessWidget {
  final double? radius;
  final Color? color;

  Dot({
    this.radius,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: this.radius,
        height: this.radius,
        decoration: BoxDecoration(color: this.color, shape: BoxShape.circle),
      ),
    );
  }
}

void showloadingMSG(BuildContext context, String message) async => showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(message),
        content: Container(
          width: 150,
          height: 50,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    });

void showloadingMSGActive(BuildContext context, String message) async =>
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(message),
            content: Container(
              width: 150,
              height: 50,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        });
void showloadingMSGpermanet(BuildContext context, String message) async =>
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            backgroundColor: Colors.transparent,
            content: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircularProgressIndicator(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: Text(
                        message,
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
