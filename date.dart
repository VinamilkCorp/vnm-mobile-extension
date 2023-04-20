import 'package:intl/intl.dart';

extension DateTimeEx on DateTime {
  String get ddMMyyyy => DateFormat("dd/MM/yyyy").format(this);
}
