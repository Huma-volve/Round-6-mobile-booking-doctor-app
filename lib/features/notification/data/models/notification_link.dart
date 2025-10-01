class NotificationLink {
  final String? url;
  final String? label;
  final bool? active;
  NotificationLink({this.url, this.label, this.active});
  factory NotificationLink.fromJson(Map<String, dynamic> json) {
    return NotificationLink(
      url: json["url"],
      label: json["label"],
      active: json["active"] == true,
    );
  }
  static List<NotificationLink> fromResponse(List<dynamic> links) {
    return links.map((e) => NotificationLink.fromJson(e)).toList();
  }
}
