import 'package:intl/intl.dart';

import '../core/exception/index.dart';

extension NumFormat on num {
  String get fmt {
    try {
      return NumberFormat.decimalPattern("vi_vn")
          .format(this)
          .replaceAll(",", "*")
          .replaceAll(".", ",")
          .replaceAll("*", ".");
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    }
    return "";
  }

  String get vnd {
    try {
      return NumberFormat.currency(locale: "vi_vn", symbol: "đ")
          .format(this)
          .replaceAll(",", "*")
          .replaceAll(".", ",")
          .replaceAll("*", ".");
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    }
    return "";
  }
}
