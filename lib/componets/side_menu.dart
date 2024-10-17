import 'package:beetracker/componets/custom_logowithbg.dart';
import 'package:beetracker/componets/custom_text.dart';
import 'package:beetracker/utils/colors.dart';
import 'package:flutter/material.dart';

import '../data/side_menu_data.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final sidemenudata = SideMenuData();

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        color: drawerBg,
        child: Column(
          children: [
            const SizedBox(height: 50),
            const LogoWithBgWidget(),
            const SizedBox(height: 10),
            const CustomText(
              text: "Nadeesha Pathiraja",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: sidemenudata.sideMenuList.length,
              itemBuilder: (BuildContext context, int index) {
                return _sideMenuList(sidemenudata, index);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _sideMenuList(SideMenuData sideMenuListData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(
            // vertical: 10,
            ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: selectedIndex == index ? kMainColor : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Icon(
                sideMenuListData.sideMenuList[index].icon,
                color: selectedIndex == index ? kWhite : kGrey,
              ),
              const SizedBox(width: 25),
              Text(
                sideMenuListData.sideMenuList[index].title,
                style: TextStyle(
                  color: selectedIndex == index ? kWhite : kGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
