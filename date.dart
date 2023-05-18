import 'package:intl/intl.dart';

extension DateTimeEx on DateTime {
  String get ddMMyyyy => DateFormat("dd/MM/yyyy").format(this);

  String get ddMMyyyy2 => DateFormat("dd-MM-yyyy").format(this);
}
