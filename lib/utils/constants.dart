import 'package:intl/intl.dart';

class Constants {
  //assets paths
  static const imgPath = 'assets/images/';
  static const iconPath = 'assets/icons/';

  //asset function
  static String imageAssets(img) => "$imgPath$img";

  //icon assest function
  static String iconAssets(img) => "$iconPath$img";

  static final numberformatedecimal = NumberFormat('###,###,##0.00');
  static final numberformatedecimal2 = NumberFormat('###,###,##0.0');
  static final numberformate = NumberFormat('###,##0');
  static final numberformate3 = NumberFormat('#####0.00');

  static final datetimeformate = DateFormat('dd-MMM-yyyy');
  static final datetimeformate2 = DateFormat('yyyy-MMM-dd');
  static double dropdowntextfiledsize = 16.0;
  static const String serialKey = 'serialkey';
  static const String isStart = 'isStart';
  static const portalEmail = 'scm.payments@abansgroup.com';
  static const portalPassword = '\$cmPayments2021';
  static const portalclient_id = '4';
  static const portalclient_secret = 'hXQjShKpypNJYcC8F2j2unV3jTx1zwgGRfQ5dtCa';
  static const portalgrant_type = 'password';
  static const b2bclientID = 'b2b_api';
  static const b2bclientSecrets = '3ac94887-3fcf-4ea4-8815-9543cae4a359';
  static const b2b2grantType = 'client_credentials';

//For version Control
  static String currentVersion = "1.2.2";
}

const Is_Login = "Is_Login";
const Is_Login_Value = "true";
const User_Data = "UserData";
const BM_Status = "BM_Status";
const Theme_Mode = "Theme_Mode";
const True_Value = "true";
const CompanyID = "CompanyID";
const LKR = "";
const Image_Key = "Image_Key";
