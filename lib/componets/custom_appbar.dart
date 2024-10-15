import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String? title;
  final bool? isHome;
  final bool needTranslate;

  const CustomAppBar({
    super.key,
    this.title,
    this.isHome,
    this.needTranslate = true,
  }) : preferredSize = const Size.fromHeight(50.0);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

double width = 0;

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    width = size.width;
    return Consumer(
      builder: (context, value, child) {
        return AppBar(
          centerTitle: true,
          leading: widget.isHome != null
              ? IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                )
              : null,
          title: CustomText(
            text: widget.title != null ? widget.title! : "D2D",
            color: kWhite,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: const IconThemeData(
            color: kWhite,
          ),
          actions: [
            widget.needTranslate
                ? PopupMenuButton<int>(
                    icon: const Icon(Icons.language),
                    onSelected: (val) {
                      setState(() {});
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem<int>(
                        value: 0,
                        child: Row(
                          children: [
                            Icon(
                              Icons.translate,
                              color: kMainColor,
                            ),
                            SizedBox(width: 20),
                            CustomText(text: "English")
                          ],
                        ),
                      ),
                      const PopupMenuDivider(),
                      const PopupMenuItem<int>(
                        value: 1,
                        child: Row(
                          children: [
                            Icon(
                              Icons.translate,
                              color: kMainColor,
                            ),
                            SizedBox(width: 20),
                            CustomText(text: "Sinhala")
                          ],
                        ),
                      ),
                      const PopupMenuDivider(),
                      const PopupMenuItem<int>(
                        value: 2,
                        child: Row(
                          children: [
                            Icon(
                              Icons.translate,
                              color: kMainColor,
                            ),
                            SizedBox(width: 20),
                            CustomText(text: "Tamil")
                          ],
                        ),
                      ),
                    ],
                  )
                : const SizedBox(),
            PopupMenuButton<int>(
              // onSelected: (value) => onSelected(context, value),
              itemBuilder: (context) => [
                // const PopupMenuDivider(),
                const PopupMenuItem<int>(
                  value: 0,
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: kMainColor,
                      ),
                      SizedBox(width: 20),
                      CustomText(text: "Logout")
                    ],
                  ),
                ),
                const PopupMenuItem<int>(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(
                        Icons.manage_accounts,
                        color: kMainColor,
                      ),
                      SizedBox(width: 20),
                      CustomText(text: "User Type")
                    ],
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}

// void onSelected(BuildContext context, int item) {
//   switch (item) {
//     case 0:
//       // UtilFunctions.pushRemoveNavigation(context, const LoginScreen());
//       showLogoutConfirmation(
//         context,
//         "Log Out..!",
//         "Do you want to leave?",
//       );

//       break;

//     case 1:
//       // UtilFunctions.pushRemoveNavigation(context, const LoginScreen());
//       showChangeUserTypeDialog(
//         context,
//         "Change User Type",
//         "Do you want to change user type?",
//         MediaQuery.of(context).size.width,
//       );

//       break;
//   }
// }

// Future<void> onLanguageSelected(BuildContext context, int item) async {
//   switch (item) {
//     case 0:
//       Logger().d('English');
//       await Provider.of<UserProvider>(context, listen: false)
//           .setCurentLanguage('en');
//       Provider.of<UserProvider>(context, listen: false).changeLanguage(context);
//       break;
//     case 1:
//       Logger().d('Sinhala');
//       await Provider.of<UserProvider>(context, listen: false)
//           .setCurentLanguage('sl');
//       Provider.of<UserProvider>(context, listen: false).changeLanguage(context);
//       break;
//     case 2:
//       Logger().d('Tamil');
//       await Provider.of<UserProvider>(context, listen: false)
//           .setCurentLanguage('ta');
//       Provider.of<UserProvider>(context, listen: false).changeLanguage(context);
//       break;
//   }
// }
