import '../material/exception/exception.dart';
import 'num.dart';

extension StringFormat on String {
  String get fmtNumber {
    String value = "";
    try {
      num number = num.parse(this);
      value = number.fmt;
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    } finally {
      return value;
    }
  }

  String get vnd {
    String value = "";
    try {
      num number = num.parse(this);
      value = number.vnd;
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    } finally {
      return value;
    }
  }

  String get phone2Int {
    var phoneNumber = replaceAll(" ", "").trim();
    if (phoneNumber.startsWith("0")) {
      phoneNumber = phoneNumber.substring(1);
    }
    return '84$phoneNumber';
  }

  String get phoneSplit {
    var phoneNumber = replaceAll(" ", "").trim();
    if (phoneNumber.startsWith("+") && phoneNumber.length > 11) {
      var patterns = [
        "(${phoneNumber.substring(0, 3)})",
        phoneNumber.substring(3, 6),
        phoneNumber.substring(6, 9),
        phoneNumber.substring(9)
      ];
      return patterns.join(" ");
    } else {
      return phoneNumber;
    }
  }
}
