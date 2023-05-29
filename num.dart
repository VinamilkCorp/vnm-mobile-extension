import 'package:intl/intl.dart';

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
      throw exception;
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
      throw exception;
    } finally {
      return value;
    }
  }
}
