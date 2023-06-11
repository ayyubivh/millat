import 'package:intl/intl.dart';

class Utilities {
  static formatDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat('dd MMMM yyyy');
    return dateFormat.format(dateTime);
  }
}
