import '../core/exception/exception.dart';
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
