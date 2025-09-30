import 'package:booking_doctor/features/notification/data/models/notification_data_model.dart';
import 'package:booking_doctor/features/notification/domain/entities/notification_model.dart';

class NotifyModel extends NotificationModel {
  NotifyModel({
    required super.title,
    required super.description,
    required super.date,
    super.imageUrl,
  });

  factory NotifyModel.fromNotificationData(NotificationData data) {
    return NotifyModel(
      title: data.title ?? "",
      description: data.message ?? "",
      date: data.createdAtFormatted ?? data.createdAt ?? "",
      imageUrl: data.icon,
    );
  }
}
