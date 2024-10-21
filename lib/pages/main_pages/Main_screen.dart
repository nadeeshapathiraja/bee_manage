// ignore_for_file: file_names

import 'package:beetracker/componets/custom_appbar.dart';
import 'package:beetracker/componets/custom_text.dart';
import 'package:beetracker/pages/hive_pages/add_hive.dart';
import 'package:beetracker/pages/main_pages/community_screen/community_page.dart';
import 'package:beetracker/pages/main_pages/home_page/home_page.dart';
import 'package:beetracker/pages/main_pages/profile_screen/profile_page.dart';
import 'package:beetracker/pages/main_pages/shop_screen/shop_page.dart';
import 'package:beetracker/provider/main_page_provider.dart';
import 'package:beetracker/utils/colors.dart';
import 'package:beetracker/utils/util_functions.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

import '../../../componets/custom_background.dart';
import '../../../componets/side_menu.dart';
import '../../../utils/responsive.dart';
import 'settings_page/settings_page.dart';

class MainScren extends StatefulWidget {
  const MainScren({super.key});

  @override
  State<MainScren> createState() => _MainScrenState();
}

class _MainScrenState extends State<MainScren> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktopSize = Responsive.isDesktop(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: !isDesktopSize
          ? const SizedBox(
              width: 260,
              child: SideMenu(),
            )
          : null,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () {
            UtilFunctions.navigateTo(
              context,
              const AddHiveDetails(),
            );
          },
          child: Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              color: appbarColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, size: 25, weight: 100),
                SizedBox(width: 10),
                CustomText(
                  text: "Add",
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                )
              ],
            ),
          ),
        ),
      ),
      body: Consumer<MainPageProvider>(
        builder: (context, mainPageProvider, child) {
          // Fetch the current selected page from the provider
          String currentPage = mainPageProvider.currentPage;

          // Define a method to return the widget based on the current page
          Widget getPageWidget(String page) {
            Logger().d(page);
            switch (page) {
              case 'Dashboard':
                return const HomeScreen();
              case 'Profile':
                return const ProfileScreen();
              case 'Shop':
                return const ShopScren();
              case 'Community':
                return const CommunityScreen();
              case 'Settings':
                return const SettingsScreen();
              default:
                return const HomeScreen(); // Default page widget
            }
          }

          return Stack(
            children: [
              CustomBG(size: size), // Background
              getPageWidget(
                currentPage,
              ), // Page content changes based on the selected menu item
            ],
          );
        },
      ),
    );
  }
}
