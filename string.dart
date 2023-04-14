import 'package:vinamilk_b2b/exceptions/exception.dart';
import 'package:vinamilk_b2b/vnm/extension/num.dart';

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
}
