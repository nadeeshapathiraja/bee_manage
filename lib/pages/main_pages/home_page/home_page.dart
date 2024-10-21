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
    // final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.builder(
            itemCount: 15,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              return const HiveCard();
            },
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
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/images/hive.png',
                ),
              ),
            ),
            const CustomText(
              text: "Hive 1",
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
