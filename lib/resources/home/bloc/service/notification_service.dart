import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../../../../utils/color_manager.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('app_icon');

    var initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
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
}
