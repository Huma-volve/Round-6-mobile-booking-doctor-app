class UnReadNotificationModel {
  final String? status;
  final String? message;
  final DataInUnRead? data;

  UnReadNotificationModel({this.status, this.message, this.data});

  factory UnReadNotificationModel.fromJson(Map<String, dynamic> json) {
    return UnReadNotificationModel(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null ? DataInUnRead.fromJson(json['data']) : null,
    );
  }
}

class DataInUnRead {
  int? count;

  DataInUnRead({this.count});

  DataInUnRead.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }
}
