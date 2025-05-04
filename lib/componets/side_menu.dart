
import 'package:bee_protect/componets/custom_logowithbg.dart';
import 'package:bee_protect/componets/custom_text.dart';
import 'package:bee_protect/provider/main_page_provider.dart';
import 'package:bee_protect/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/side_menu_data.dart';
import '../utils/responsive.dart';

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
                return _sideMenuList(
                  sidemenudata,
                  index,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _sideMenuList(SideMenuData sideMenuListData, int index) {
    return Consumer<MainPageProvider>(
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            value.setPage(sideMenuListData.sideMenuList[index].title);
            if (!Responsive.isDesktop(context)) {
              Navigator.of(context).pop();
            }
          },
          child: Container(
            height: 60,
            margin: const EdgeInsets.symmetric(
                // vertical: 10,
                ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: value.currentPage ==
                      sideMenuListData.sideMenuList[index].title
                  ? kMainColor
                  : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    sideMenuListData.sideMenuList[index].icon,
                    color: value.currentPage ==
                            sideMenuListData.sideMenuList[index].title
                        ? kWhite
                        : Colors.black54,
                  ),
                  const SizedBox(width: 25),
                  Text(
                    sideMenuListData.sideMenuList[index].title,
                    style: TextStyle(
                      color: value.currentPage ==
                              sideMenuListData.sideMenuList[index].title
                          ? kWhite
                          : Colors.black54,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
