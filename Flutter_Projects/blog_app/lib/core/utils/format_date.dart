import 'package:intl/intl.dart';

String formatDateBydMMYYYY(DateTime dateTime) {
  return DateFormat('d MM, yyyy').format(dateTime);
}
