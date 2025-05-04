
import 'package:bee_protect/pages/main_pages/community_screen/community_page.dart';
import 'package:bee_protect/pages/main_pages/home_page/home_page.dart';
import 'package:bee_protect/pages/main_pages/profile_screen/profile_page.dart';
import 'package:bee_protect/pages/main_pages/settings_page/settings_page.dart';
import 'package:flutter/material.dart';

import '../models/side_menu_model.dart';

class SideMenuData {
  final sideMenuList = <SideMenuModel>[
    SideMenuModel(
      icon: Icons.home,
      title: "Dashboard",
      widget: const HomeScreen(),
    ),
    SideMenuModel(
      icon: Icons.person,
      title: "Profile",
      widget: const ProfileScreen(),
    ),
    // SideMenuModel(
    //   icon: Icons.storefront,
    //   title: "Shop",
    //   widget: const ShopScren(),
    // ),
    SideMenuModel(
      icon: Icons.groups,
      title: "Community",
      widget: const CommunityScreen(),
    ),
    SideMenuModel(
      icon: Icons.notifications,
      title: "Notifications",
      widget: const CommunityScreen(),
    ),
    SideMenuModel(
      icon: Icons.settings,
      title: "Settings",
      widget: const SettingsScreen(),
    ),
  ];
}
