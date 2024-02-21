class NotificationModel {
  NotificationModel({
    this.id,
    this.title,
    this.message,
    this.time,
    this.backgroundColor,
    this.icon,
    this.type,
  });

  String? id;
  String? title;
  String? message;
  DateTime? time;
  NotificationColorEnum? backgroundColor;
  NotificationIconEnum? icon;
  NotificationTypeEnum? type;

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json["id"],
      title: json["title"],
      message: json["message"],
      time: DateTime.parse(json["time"]),
      backgroundColor: NotificationColorEnum.values.byName(json["backgroundColor"].split('.').last),
      icon: NotificationIconEnum.values.byName(json["icon"].split('.').last),
      type: NotificationTypeEnum.values.byName(json["type"].split('.').last),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "message": message,
      "time": time.toString(),
      "backgroundColor": backgroundColor.toString(),
      "icon": icon.toString(),
      "type": type.toString(),
    };
  }
}

enum NotificationColorEnum { blue, red, yellow, purple, pink }

enum NotificationIconEnum { business, list, person, notification, error }

enum NotificationTypeEnum { onetime, recurring }
