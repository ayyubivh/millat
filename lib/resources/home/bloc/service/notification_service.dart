import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/home/bloc/models/notification/get_notification_model.dart';
import 'package:http/http.dart' as http;
import 'package:millat/utils/string_constants.dart';

import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../../../../utils/color_manager.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('app_icon');

    const iosInitializationSetting = DarwinInitializationSettings();

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: iosInitializationSetting);
    await notificationsPlugin.initialize(initializationSettings);
    await notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) async {},
    );
    tz.initializeTimeZones();
  }

  Future<void> scheduleNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
    required DateTime scheduledNotificationDateTime,
    bool isNotificationOn = true,
  }) async {
    tz.initializeTimeZones();
    if (!isNotificationOn) {
      await FlutterLocalNotificationsPlugin().cancel(id);
      return;
    }

    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'channelId',
      'channelName',
      importance: Importance.max,
      priority: Priority.high,
      fullScreenIntent: true,
      largeIcon: const DrawableResourceAndroidBitmap('app_icon'),
      playSound: true,
      autoCancel: true,
      color: ColorManager.primary,
    );

    var platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    var location = tz.getLocation('Asia/Kolkata');

    var scheduledDateTime = tz.TZDateTime.from(
      scheduledNotificationDateTime,
      location,
    );
    var now = tz.TZDateTime.now(tz.local);

    if (scheduledDateTime.isBefore(now)) {
      return;
    }

    await FlutterLocalNotificationsPlugin().zonedSchedule(
      id,
      title,
      body,
      scheduledDateTime,
      platformChannelSpecifics,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      payload: payload,
    );
  }

  Future<NotificationModel> fetchNotficationApi(BuildContext context) async {
    const endPoint = 'notification_in_app';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response =
        await http.get(Uri.parse(kBaseUrl + endPoint), headers: headers);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          final result = NotificationModel.fromJson(data);
          print(result);
          return result;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on order API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  addReadMark({required BuildContext context, required String id}) async {
    final endPoint = 'notification_in_app/read_mark/$id';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };

    final response = await http.patch(
      Uri.parse(kBaseUrl + endPoint),
      headers: headers,
    );

    try {
      if (response.statusCode == 200) {
        debugPrint(response.body);
      } else {
        print('API request failed with status code: ${response.statusCode}');
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('error on API fetch: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }
}
