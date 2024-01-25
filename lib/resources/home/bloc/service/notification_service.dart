import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:millat/resources/home/bloc/models/notification/get_notification_model.dart';
import 'package:millat/services/http_services.dart';
// import 'package:http/http.dart' as http;

import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../../../../utils/color_manager.dart';

class NotificationService extends HttpServices {
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
    required int id,
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

  Future<NotificationModel> fetchNotficationApi(
      {required String id, required BuildContext context}) async {
    final endPoint = 'notification_in_app';

    final response = await get(endPoint: endPoint, isToken: true);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          final result = NotificationModel.fromJson(data);
          return result;
        } else {
          debugPrint(
              'API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        debugPrint('error on order API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  addReadMark({required BuildContext context, required String id}) async {
    final endPoint = 'notification_in_app/read_mark/$id';

    final response = await patch(endPoint: endPoint, isToken: true, body: {});

    try {
      if (response.statusCode == 200) {
        debugPrint(response.body);
      } else {
        debugPrint(
            'API request failed with status code: ${response.statusCode}');
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('error on API fetch: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }
}
