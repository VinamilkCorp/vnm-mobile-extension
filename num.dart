import 'package:intl/intl.dart';
import 'package:vinamilk_b2b/exceptions/exception.dart';

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
