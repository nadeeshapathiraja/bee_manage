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
                                fontSize: 15,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: CustomText(
                                  text: "Today Inspection",
                                  textAlign: TextAlign.center,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
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
                    return HiveCard(
                      indexNo: index,
                    );
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
    required this.indexNo,
  });
  final int indexNo;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        UtilFunctions.navigateTo(
          context,
          const DisplayHiveDetails(),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 186, 3),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: kBlack,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 1,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 5),
                Text(
                  (indexNo + 1).toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const CustomText(
              text: "Hive Name",
              fontWeight: FontWeight.bold,
            ),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: kWhite,
                        border: Border.all(color: kGrey, width: 3),
                      ),
                      // width: size.width * 0.15,
                      // height: size.width * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          'assets/images/hive.png',
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Column(
                    children: [
                      Container(
                        width: size.width * 0.35,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 106, 254, 163)
                              .withOpacity(0.5),
                          // const Color.fromARGB(255, 248, 45, 14)
                          //     .withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "Pending Days"
                                //"Overdue Days"
                                ,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: size.width * 0.35,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 253, 227, 140),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
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
                    ],
                  ),
                ),
                const SizedBox(width: 3),
              ],
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Container(
                width: size.width,
                height: size.height * 0.065,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 253, 227, 140),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          const Center(
                            child: CustomText(
                              text: "Queen",
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset(
                              'assets/images/queen.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.black,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Center(
                            child: CustomText(
                              text: "Health",
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Center(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 243, 247, 176),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 2,
                                ),
                                child: CustomText(
                                  text: "Good",
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: CustomText(
                              text: "Marked",
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.check_box,
                            size: 20,
                            color: kGreen,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // child: ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
