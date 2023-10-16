import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:groovvee/constantes.dart';
import 'package:timezone/timezone.dart';
import '../interfaces/notifier_service.dart';

class LocalNotificationsService implements NotifierService {
  late final _plugin = FlutterLocalNotificationsPlugin();

  @override
  Future<void> showScheduledNotification(
    int id,
    String body,
    String title,
    String payload,
    TZDateTime scheduledDate,
  ) {
    return _plugin.zonedSchedule(
      id,
      title,
      body,
      scheduledDate,
      const NotificationDetails(
        iOS: DarwinNotificationDetails(),
        android: AndroidNotificationDetails(
          '$appId.notifications',
          notificationChannelName,
          channelDescription: notificationChannelDescription,
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      payload: payload,
    );
  }

  @override
  Future<void> showImmediateNotification(
    int id,
    String body,
    String title,
    String payload,
  ) {
    return _plugin.show(
      id,
      title,
      body,
      const NotificationDetails(
        iOS: DarwinNotificationDetails(),
        android: AndroidNotificationDetails(
          '$appId.notifications',
          notificationChannelName,
          channelDescription: notificationChannelDescription,
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
      payload: payload,
    );
  }

  @override
  Future<void> showOngoingNotification(
    int id,
    String body,
    String title,
    String payload,
  ) {
    final androidPlugin = _plugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();

    if (androidPlugin != null) {
      return androidPlugin.startForegroundService(
        id,
        title,
        body,
        notificationDetails: const AndroidNotificationDetails(
          '$appId.notifications',
          notificationChannelName,
          channelDescription: notificationChannelDescription,
          importance: Importance.low,
          priority: Priority.low,
          autoCancel: false,
          ongoing: true,
        ),
        payload: payload,
      );
    }

    return Future.value();
  }

  @override
  Future<bool?> initialize({
    required NotificationResponseCallback onBackgroundResponse,
    required NotificationResponseCallback onResponse,
  }) {
    return _plugin.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('notification_icon'),
        iOS: DarwinInitializationSettings(),
      ),
      onDidReceiveBackgroundNotificationResponse: (details) {
        onBackgroundResponse(details.payload ?? '');
      },
      onDidReceiveNotificationResponse: (details) {
        onResponse(details.payload ?? '');
      },
    );
  }
}
