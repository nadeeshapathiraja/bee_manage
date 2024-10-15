class Validation {
  String validateMobile(String value) {
    if (value.length > 3) {
      String pre = value.substring(0, 2);
      if (pre == '07') {
        String patttern = r'(^[0-9]*$)';
        RegExp regExp = new RegExp(patttern);
        if (value.length == 0) {
          return "Mobile is Required";
        } else if (value.length != 10) {
          return "Mobile number must 10 digits";
        } else if (!regExp.hasMatch(value)) {
          return "Mobile Number must be digits";
        }
      } else {
        return 'Invalid mobile number format';
      }
    } else {
      return "Mobile number must 10 digits";
    }
    return value;
  }

  String validatePhone(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Telephone is Required";
    } else if (value.length != 10) {
      return "Telephone number must 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Telephone Number must be digits";
    }

    return value;
  }

  String validateFax(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return value;
    } else if (value.length != 10) {
      return "Fax number must 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Fax Number must be digits";
    }

    return value;
  }

  String validatePassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Password can't be Empty ";
    } else if (!regExp.hasMatch(value)) {
      return " Minimum 1 Upper case(A,B,C) \n Minimum 1 lowercase(a,b,c) \n Minimum 1 Numeric Number(1,2,3) \n Minimum 1 Special CharacterCommon \n Allow Character ( ! @ # \$ & * ~ )\n Minimum 8 characters";
    }
    return value;
  }

  // String validateNic(String nic) {
  //   String pattern = "^[0-9]{9}[vVxX]";
  //   RegExp regExp = new RegExp(pattern);
  //   if (nic.length == 0) {
  //       return "NIC can't be Empty ";
  //     }
  //   else if (!regExp.hasMatch(nic)) {
  //     return "Invalid NIC";
  //   }
  //   // if (nic.length == 0) {
  //   //   return "NIC can't be Empty ";
  //   // }
  //   // else if (!regExp.hasMatch(nic)) {
  //   //   return "Invalid NIC";
  //   // }
  //   return value;
  // }

  String validateNic(String value, {bool isOptional = false}) {
    int minval = 10;
    // bool status = false;

    // In case the NIC Input is optional
    if (isOptional && value.isEmpty) {
      return value;
    }

    String pattern = r'^(?:19|20)?\d{2}[0-9]{10}|[0-9]{9}[x|X|v|V]$';

    if (value.isEmpty) {
      return 'NIC value is empty';
      // status = false;
    } else if (value.length < minval) {
      return 'Please enter correct NIC number';
      // status = false;
      // return 'lll';
    } else if (value.length == 10 || value.length == 12) {
      RegExp regex = new RegExp(pattern);
      if (!regex.hasMatch(value)) {
        return 'Please enter correct NIC number';
      } else {
        // status= true;
      }
    } else {
      // status = false;
      return 'Please enter correct NIC number';
    }
    return value;
  }

  String validateTextField(String value) {
//    String patttern = r'(^[0-9]*$)';
//    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Can't Be Empty ";
    }
    return value;
  }

  String validateInteger(String value) {
    if (value.length > 0) {
      if (value[0] == '-') {
        return 'Please enter positive number';
      } else if (value == '0') {
        return " Value can't be 0";
      } else {
        String pattern = r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]';
        RegExp regExp = new RegExp(pattern);
        if (!regExp.hasMatch(value)) {
          return 'Please enter correct number';
        }
      }
    } else {
      return 'Please enter  number';
    }
    return value;
  }

  String validateEmail(String value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == value || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return value;
  }
}

bool validatemobile(String data) {
  try {
    int.parse(data);
    if (data.length >= 10) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}

String multiplespaceformatter(String data) {
  final pattern = RegExp('\\s+');
  return data.replaceAll(pattern, ' ');
}

mobileNoFormat(String mobile) {
  String a = '${mobile[0]}${mobile[1]}${mobile[2]}';
  String b =
      '${mobile[3]}${mobile[4]}${mobile[5]}${mobile[6]}${mobile[7]}${mobile[8]}${mobile[9]}';
  String mobileNo = '$a-$b';
  return mobileNo;
}

int returnconvertint(Map<String, dynamic> sr) {
  try {
    print('--');
    return sr as int;
  } catch (e) {
    print('-/-/');
    return (sr as double).toInt();
  }
}

String validateEmail(String value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  if (value == value || value.isEmpty || !regex.hasMatch(value))
    return 'Enter a valid email address';
  else
    return '';
}
