import 'package:beetracker/componets/custom_text.dart';
import 'package:beetracker/pages/hive_pages/view_hive.dart';
import 'package:beetracker/utils/colors.dart';
import 'package:beetracker/utils/util_functions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: OrientationBuilder(
        builder: (context, orientation) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: kWhite.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Column(
                            children: [
                              CustomText(
                                text: "Total Hives",
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 60,
                          color: Colors.black,
                        ),
                        const Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Column(children: [
                            CustomText(
                              text: "Today Inspection",
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return const HiveCard();
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class HiveCard extends StatelessWidget {
  const HiveCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        UtilFunctions.navigateTo(
          context,
          const DisplayHiveDetails(),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: kWhite.withOpacity(0.9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          children: [
            const CustomText(
              text: "Hive 1",
              fontWeight: FontWeight.bold,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                // decoration: BoxDecoration(
                //   border: Border.all(),
                // ),
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/images/hive.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
