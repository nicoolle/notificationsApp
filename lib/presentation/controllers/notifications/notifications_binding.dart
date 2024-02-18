import 'package:get/get.dart';
import 'package:make_it_app/presentation/controllers/notifications/notifications_controller.dart';

class NotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsController>(() => NotificationsController());
  }
}
