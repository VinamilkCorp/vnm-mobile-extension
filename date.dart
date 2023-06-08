import 'package:intl/intl.dart';

extension DateTimeEx on DateTime {
  String get ddMMyyyy => DateFormat("dd/MM/yyyy").format(this);

  String get ddMMyyyy2 => DateFormat("dd-MM-yyyy").format(this);

  String get ddMM => DateFormat("dd/MM").format(this);

  String get MMyyyy => DateFormat("MM/yyyy").format(this);

  String get ddMMhhmm => DateFormat("dd/MM - HH:mm").format(this);
}
