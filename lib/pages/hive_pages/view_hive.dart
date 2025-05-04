import 'package:flutter/material.dart';

import '../../componets/custom_appbar.dart';
import '../../componets/custom_button.dart';
import '../../componets/custom_text.dart';
import '../../utils/colors.dart';

class DisplayHiveDetails extends StatefulWidget {
  const DisplayHiveDetails({super.key});

  @override
  State<DisplayHiveDetails> createState() => _DisplayHiveDetailsState();
}

class _DisplayHiveDetailsState extends State<DisplayHiveDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: const CustomAppBar(
          title: "Hive Manage",
        ),
        body: Stack(
          children: [
            // CustomBG(
            //   size: size,
            //   link: "assets/images/bg2.jpg",
            // ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  const CustomText(
                    text: "Hive Details",
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                  ),
                  CardDetails(
                    size: size,
                    widget: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: CustomText(
                              text: "Hive Name",
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              "Hive One",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: CardDetails(
                            size: size,
                            color: const Color.fromARGB(255, 124, 185, 233),
                            widget: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  CustomText(
                                    text: "Last Inspection",
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Text(
                                    "20/11/2024",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: CardDetails(
                              size: size,
                              widget: const Padding(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    CustomText(
                                      text: "Next Inspection",
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Text(
                                      "31/11/2024",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        color: kGrey,
                        fontSize: 13,
                        onTap: () {},
                        text: "Inspection History",
                        height: 30,
                        width: 140,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
    required this.size,
    this.color = const Color.fromARGB(255, 240, 195, 49),
    required this.widget,
  });

  final Size size;
  final Color color;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: kBlack.withOpacity(0.5),
            offset: const Offset(1.0, 1.0), //(x,y)
            blurRadius: 2,
          ),
        ],
      ),
      child: widget,
    );
  }
}
