import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utilities {
  static formatDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat('dd MMMM yyyy');
    return dateFormat.format(dateTime);
  }

  static formatDatePrayerTracker(String date) {
    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat('dd-MM-yyyy');
    return dateFormat.format(dateTime);
  }

  static String getTimeAgo(String dateString) {
    final now = DateTime.now();
    final date = DateTime.parse(dateString);
    final difference = now.difference(date);

    if (difference.inDays >= 30) {
      final months = difference.inDays ~/ 30;
      return '$months ${months == 1 ? "month" : "months"} ago';
    } else if (difference.inDays >= 1) {
      return '${difference.inDays} ${difference.inDays == 1 ? "day" : "days"} ago';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} ${difference.inHours == 1 ? "hour" : "hours"} ago';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes} ${difference.inMinutes == 1 ? "minute" : "minutes"} ago';
    } else {
      return 'just now';
    }
  }
}

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}
