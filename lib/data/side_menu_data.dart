import 'package:flutter/material.dart';

import '../models/side_menu_model.dart';

class SideMenuData {
  final sideMenuList = <SideMenuModel>[
    SideMenuModel(
      icon: Icons.home,
      title: "Dashboard",
    ),
    SideMenuModel(
      icon: Icons.person,
      title: "Profile",
    ),
    SideMenuModel(
      icon: Icons.run_circle,
      title: "Shop",
    ),
    SideMenuModel(
      icon: Icons.history,
      title: "Community",
    ),
    SideMenuModel(
      icon: Icons.settings,
      title: "Settings",
    ),
    SideMenuModel(
      icon: Icons.logout,
      title: "SignOut",
    ),
  ];
}
