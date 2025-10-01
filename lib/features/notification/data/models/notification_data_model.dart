class NotificationData {
  final String? id;
  final String? title;
  final String? message;
  final String? icon;
  final String? color;
  final String? type;
  final bool? isRead;
  final String? readAt;
  final String? createdAt;
  final String? createdAtFormatted;
  NotificationData({
    this.id,
    this.title,
    this.message,
    this.icon,
    this.color,
    this.type,
    this.isRead,
    this.readAt,
    this.createdAt,
    this.createdAtFormatted,
  });

  factory NotificationData.fromJson(Map<String, dynamic> json) {
    return NotificationData(
      id: json["id"],
      title: json["title"],
      message: json["message"],
      icon: json["icon"],
      color: json["color"],
      type: json["type"],
      isRead: json["is_read"] == true,
      readAt: json["read_at"],
      createdAt: json["created_at"],
      createdAtFormatted: json["created_at_formatted"],
    );
  }
  static List<NotificationData> fromResponse(List<dynamic> notifications) {
    return notifications.map((e) => NotificationData.fromJson(e)).toList();
  }
}
