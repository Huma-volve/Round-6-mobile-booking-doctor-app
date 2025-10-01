import 'package:booking_doctor/features/notification/data/models/notification_data_model.dart';
import 'package:booking_doctor/features/notification/data/models/remove_notifications.dart';
import 'package:booking_doctor/features/notification/domain/entities/notification_model.dart';

abstract class ApiNotificationSource {
  Future<List<NotificationModel>> getnotifications();
  Future<NotificationData> shownotification(String id);
  Future<List<RemoveNotificationModel>> removenotification(String id);
  Future<List<RemoveNotificationModel>> removeAllnotifications();
  Future<List<NotificationModel>> unreadNotificationsCount(String id);
  Future<List<NotificationModel>> markAsReadNotification(String id);
  Future<List<NotificationModel>> markAsAllReadNotifications(String id);
}
