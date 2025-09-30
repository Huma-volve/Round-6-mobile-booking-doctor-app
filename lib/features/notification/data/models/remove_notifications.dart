class RemoveNotificationModel {
  final String? status;
  final String? message;
  final DataInRemove? data;

  RemoveNotificationModel({this.status, this.message, this.data});

  factory RemoveNotificationModel.fromJson(Map<String, dynamic> json) {
    return RemoveNotificationModel(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null ? DataInRemove.fromJson(json['data']) : null,
    );
  }
}

class DataInRemove {
  int? deletedCount;

  DataInRemove({this.deletedCount});

  DataInRemove.fromJson(Map<String, dynamic> json) {
    deletedCount = json['deleted_count'];
  }
}
