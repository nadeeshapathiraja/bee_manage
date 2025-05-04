// import 'package:logger/logger.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class UserServices {
//   //=============User pass add and check============//
//   static Future<void> storeBeforeUse() async {
//     try {
//       final SharedPreferences prefs = await SharedPreferences.getInstance();
//       await prefs.setBool('passed', true);
//     } catch (e) {
//       Logger().e(e);
//     }
//   }

//   static Future<bool> getProofBeforeuse() async {
//     try {
//       final SharedPreferences prefs = await SharedPreferences.getInstance();
//       final bool passedVal = prefs.getBool('passed') ?? false;
//       return passedVal;
//     } catch (e) {
//       Logger().e(e);
//       return false;
//     }
//   }
// }
