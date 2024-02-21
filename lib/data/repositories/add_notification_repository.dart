import 'dart:convert';

import 'package:make_it_app/data/models/notification.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationRepository {
  addNewNotification(NotificationModel notification) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var notificationsList = prefs.getStringList("notifications");
    if (notificationsList == null) {
      List<String> newList = [jsonEncode(notification)];
      await prefs.setStringList("notifications", newList);
      print(newList);
    }
    else {
      notificationsList.add(jsonEncode(notification));
      await prefs.setStringList("notifications", notificationsList);
      print(notificationsList);
    }
  }

  Future<List<NotificationModel>> getNotifications() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var notificationsList = prefs.getStringList("notifications");
    if (notificationsList != null) {
      return notificationsList.map((e) => NotificationModel.fromJson(jsonDecode(e) as Map<String, dynamic>)).toList();
    }

    return [];
  }
}