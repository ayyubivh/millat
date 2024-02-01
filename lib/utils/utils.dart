import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utilities {
  static String formatDate(String date) {
    try {
      DateTime dateTime = DateTime.parse(date);
      DateFormat dateFormat = DateFormat('dd MMMM yyyy');

      return dateFormat.format(dateTime);
    } catch (e) {
      return '';
    }
  }

  static formatDatePrayerTracker(String date) {
    DateTime dateTime = DateTime.parse(date);
    DateFormat dateFormat = DateFormat('dd-MM-yyyy');
    return dateFormat.format(dateTime);
  }

  static String formatTimeAgo(String dateTimeString) {
    try {
      final DateTime now = DateTime.now();
      final DateTime dateTime = DateTime.parse(dateTimeString);
      final Duration difference = now.difference(dateTime);

      if (difference.inDays > 0) {
        final days = difference.inDays;
        return '${days.toString()} ${days == 1 ? 'day' : 'days'} ago';
      } else if (difference.inHours > 0) {
        final hours = difference.inHours;
        return '${hours.toString()} ${hours == 1 ? 'hr' : 'hrs'} ago';
      } else if (difference.inMinutes > 0) {
        final minutes = difference.inMinutes;
        return '${minutes.toString()} ${minutes == 1 ? 'min' : 'mins'} ago';
      } else {
        return 'just now';
      }
    } catch (e) {
      debugPrint('Error formatting time ago: $e');
      return 'N/A'; // or any default value you prefer
    }
  }

  static String removeFootnotesFromMeaning(String meaning) {
    final text = parse(meaning);
    final String plainText = parse(text.body!.text).documentElement!.text;
    return plainText;
  }

  static Future<void> saveIntToSharedPreferences(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, value);
  }

  static Future<int> getIntFromSharedPreferences(
      String key, int nullVal) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final value = prefs.getInt(key);
    return value ?? nullVal;
  }

  static Future<void> saveBoolToSharedPreferences(
      String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  static Future<bool> getBoolFromSharedPreferences(String key,
      {bool nullVal = false}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final value = prefs.getBool(key);
    return value ?? nullVal;
  }

  static Future<void> saveStringToSharedPreferences(
      String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  static Future<String> getStringFromSharedPreferences(String key,
      {String nullVal = ""}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final value = prefs.getString(key);
    return value ?? nullVal;
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

  static bool isNamazTimeAfter(DateTime currentTime, String namazTime) {
    List<String> timeParts = namazTime.split(':');

    if (timeParts.length == 2) {
      int hour = int.tryParse(timeParts[0]) ?? 0;
      int minute = int.tryParse(timeParts[1]) ?? 0;
      DateTime namazDateTime = DateTime(
          currentTime.year, currentTime.month, currentTime.day, hour, minute);

      return namazDateTime.isAfter(currentTime);
    }

    return false;
  }

  Widget buildCachedNetworkImage(
      {String? imageUrl,
      double? height,
      BoxFit boxFit = BoxFit.fill,
      double? width,
      Color? color,
      VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: CachedNetworkImage(
        color: color,
        imageUrl: imageUrl ?? '',
        height: height,
        width: width,
        fit: boxFit,
        placeholder: (context, url) => ShimmerUtils.customRectangleShimmer(
          width ?? 0,
          height ?? 0,
        ),
        errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.report_gmailerrorred_outlined)),
      ),
    );
  }

  static Color getColorFromApiString(String apiColor) {
    switch (apiColor.toLowerCase()) {
      case "red":
        return Colors.red;
      case "blue":
        return Colors.blue;
      case "black":
        return Colors.black;
      case "green":
        return Colors.green;
      default:
        return Colors.black;
    }
  }
}

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}
