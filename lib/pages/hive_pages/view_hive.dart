import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../componets/custom_appbar.dart';
import '../../componets/custom_background.dart';
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
          title: "Hive Details",
        ),
        body: Stack(
          children: [
            CustomBG(size: size),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    5.height,
                    CardDetails(
                      color: lemonChiffon,
                      size: size,
                      widget: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Column(
                          children: [
                            const CustomText(
                              text: "Basic Hive Information",
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                            const DataRow(
                              title: "Hive Name",
                              value: "Hive One",
                            ),
                            const DataRow(
                              title: "Hive Location",
                              value: "Mathugama",
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomButton(
                                  color: kGrey,
                                  fontSize: 13,
                                  onTap: () {},
                                  text: "View More",
                                  height: 35,
                                  width: 120,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CardDetails(
                      size: size,
                      color: khaki,
                      widget: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            const CustomText(
                              text: "Inspection & Maintenance",
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                            5.height,
                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: CardDetails(
                                    size: size,
                                    color: const Color.fromARGB(
                                        255, 124, 185, 233),
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
                                const SizedBox(width: 10),
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
                            5.height,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: CustomButton(
                                    color: gray,
                                    fontSize: 13,
                                    onTap: () {},
                                    text: "Inspection History",
                                    height: 35,
                                  ),
                                ),
                                Expanded(
                                  child: CustomButton(
                                    color: dodgerBlue,
                                    fontSize: 13,
                                    onTap: () {},
                                    text: "New Inspection",
                                    height: 35,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    10.height,
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: CardDetails(
                            size: size,
                            color: wheat,
                            widget: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  const CustomText(
                                    text: "Queen Information",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset(
                                      'assets/images/queen.png',
                                    ),
                                  ),
                                  const CardDataColumn(
                                    title: "Queen Status",
                                    value: "Present",
                                  ),
                                  const CardDataColumn(
                                    title: "Queen Age",
                                    value: "1" " Year",
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CardDataColumn(
                                        title: "Queen Marked",
                                        value: "Yes",
                                        centerValue: true,
                                      ),
                                      Container(
                                        height: 30.0,
                                        width: 1.0,
                                        color: gray,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                      ),
                                      const CardDataColumn(
                                        title: "Marked Color",
                                        value: "Yellow",
                                        centerValue: true,
                                      ),
                                    ],
                                  ),
                                  CustomButton(
                                    color: appbarColor,
                                    fontSize: 13,
                                    onTap: () {},
                                    text: "Update",
                                    height: 35,
                                    width: 120,
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
                                      text: "Colony Information",
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900,
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
                    10.height,
                    Row(
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
                                    text: "Health Monitoring",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w900,
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
                                      text: "Feeding Records",
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900,
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
                    10.height,
                    CardDetails(
                      color: lemonChiffon,
                      size: size,
                      widget: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const CustomText(
                              text: "Production & Harvest",
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                            const DataRow(
                              title: "Hive Name",
                              value: "Hive One",
                            ),
                            const DataRow(
                              title: "Hive Location",
                              value: "Mathugama",
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomButton(
                                  color: kGrey,
                                  fontSize: 13,
                                  onTap: () {},
                                  text: "View More",
                                  height: 35,
                                  width: 120,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class CardDataColumn extends StatelessWidget {
  final String title;
  final String value;
  final bool centerValue;
  const CardDataColumn({
    super.key,
    required this.title,
    this.value = "N/A",
    this.centerValue = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                text: title,
                fontSize: 10,
                fontWeight: FontWeight.w900,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: centerValue
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: whiteSmoke.withOpacity(0.6),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  child: CustomText(
                    text: value,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DataRow extends StatelessWidget {
  final String title;
  final String? value;
  const DataRow({
    super.key,
    required this.title,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: CustomText(
            text: title,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const CustomText(text: ": "),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Text(
            value ?? "N/A",
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
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
