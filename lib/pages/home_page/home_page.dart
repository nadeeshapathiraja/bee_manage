import 'package:beetracker/componets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../componets/custom_background.dart';
import '../../componets/side_menu.dart';
import '../../utils/responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: Stack(
        children: [
          CustomBG(size: size),
          Container(),
        ],
      ),
    );
  }
}
