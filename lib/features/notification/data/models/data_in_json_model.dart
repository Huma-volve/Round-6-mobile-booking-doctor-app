import 'package:booking_doctor/features/notification/data/models/notification_data_model.dart';
import 'package:booking_doctor/features/notification/data/models/notification_link.dart';
import 'package:booking_doctor/features/notification/data/models/notify_model.dart';

class DataInJson {
  final int? currentPage;
  final List<NotificationData>? data;
  final String? firstPageUrl;
  final int? from;
  final int? lastPage;
  final String? lastPageUrl;
  final List<NotificationLink>? links;
  final String? nextPageUrl;
  final String? path;
  final int? perPage;
  final String? prevPageUrl;
  final int? to;
  final int? total;
  DataInJson({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });
  factory DataInJson.fromJson(Map<String, dynamic> json) {
    return DataInJson(
      currentPage: json["current_page"],
      data: NotificationData.fromResponse(json["data"] ?? []),
      firstPageUrl: json["first_page_url"],
      from: json["from"],
      lastPage: json["last_page"],
      lastPageUrl: json["last_page_url"],
      links: NotificationLink.fromResponse(json["links"] ?? []),
      nextPageUrl: json["next_page_url"],
      path: json["path"],
      perPage: json["per_page"],
      prevPageUrl: json["prev_page_url"],
      to: json["to"],
      total: json["total"],
    );
  }
  static List<DataInJson> fromResponse(List<dynamic> data) {
    return data.map((e) => DataInJson.fromJson(e)).toList();
  }
}
