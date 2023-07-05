import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:millat/utils/globals.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

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

  // notificationDetails() {
  //   return const NotificationDetails(
  //     android: AndroidNotificationDetails(
  //       'channelId',
  //       'channelName',
  //       importance: Importance.max,
  //       fullScreenIntent: true,
  //       largeIcon: DrawableResourceAndroidBitmap('app_icon'),
  //       playSound: true,
  //     ),
  //   );
  // }

  // Future showNotification(
  //     {int id = 0, String? title, String? body, String? payLoad}) async {
  //   return notificationsPlugin.show(
  //       id, title, body, await notificationDetails());
  // }

  Future<void> scheduleNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
    required DateTime scheduledNotificationDateTime,
  }) async {
    tz.initializeTimeZones(); // Initialize time zones
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'channelId',
      'channelName',
      importance: Importance.max,
      priority: Priority.high,
      fullScreenIntent: true,
      largeIcon: DrawableResourceAndroidBitmap('app_icon'),
      playSound: true,
      autoCancel: true,
      color: primaryGreen,
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
