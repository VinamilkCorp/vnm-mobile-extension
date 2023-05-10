import '../core/exception/index.dart';
import 'num.dart';

extension StringFormat on String {
  String get fmtNumber {
    try {
      num number = num.parse(this);
      return number.fmt;
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    }
    return "";
  }

  String get vnd {
    try {
      num number = num.parse(this);
      return number.vnd;
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    }
    return "";
  }

  String get phone2Int {
    var phoneNumber = this.replaceAll(" ", "").trim();
    if (phoneNumber.length == 10 && phoneNumber.startsWith("0")) {
      return '84${phoneNumber.substring(1)}';
    }
    if (phoneNumber.length == 9 && !phoneNumber.startsWith("0")) {
      return '84$phoneNumber';
    }
    return phoneNumber;
  }
}
