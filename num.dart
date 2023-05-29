import 'package:intl/intl.dart';
import 'package:vinamilk_b2b/vnm/core/exception/exception.dart';

extension NumFormat on num {
  String get fmt {
    String value = "";
    try {
      value = NumberFormat.decimalPattern("vi_vn")
          .format(this)
          .replaceAll(",", "*")
          .replaceAll(".", ",")
          .replaceAll("*", ".");
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    } finally {
      return value;
    }
  }

  String get vnd {
    String value = "";
    try {
      value = NumberFormat.currency(locale: "vi_vn", symbol: "đ")
          .format(this)
          .replaceAll(",", "*")
          .replaceAll(".", ",")
          .replaceAll("*", ".");
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    } finally {
      return value;
    }
  }
}
