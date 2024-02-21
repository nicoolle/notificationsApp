import 'package:get/get.dart';
import 'package:make_it_app/data/models/notification.dart';
import 'package:make_it_app/data/repositories/add_notification_repository.dart';

class AddNotificationController extends GetxController {
  final NotificationRepository repository = NotificationRepository();
  late List<NotificationModel> notificationModel;

  @override
  void onInit() async {
    super.onInit();
    notificationModel = await repository.getNotifications();
    print(notificationModel);
  }

  @override
  void onReady() async {
    super.onReady();
  }

  addNewNotification() {
    final notification = NotificationModel(
        id: '1',
        title: 'title',
        message: 'mes',
        time: DateTime.now(),
        backgroundColor: NotificationColorEnum.red,
        icon: NotificationIconEnum.notification,
        type: NotificationTypeEnum.recurring);
    repository.addNewNotification(notification);
  }
}
