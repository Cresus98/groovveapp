
import 'package:timezone/timezone.dart';

typedef NotificationResponseCallback = void Function(String);

abstract class NotifierService {

  Future<void> showScheduledNotification(
    int id,
    String body,
    String title,
    String payload,
    TZDateTime scheduledDate,
  );

  Future<void> showImmediateNotification(
    int id,
    String body,
    String title,
    String payload,
  );

  Future<void> showOngoingNotification(
    int id,
    String body,
    String title,
    String payload,
  );

  Future<bool?> initialize({
    required NotificationResponseCallback onBackgroundResponse,
    required NotificationResponseCallback onResponse,
  });
}


//NotifierService get notifier => GetIt.I();
