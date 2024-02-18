import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:make_it_app/presentation/controllers/login/login_binding.dart';
import 'package:make_it_app/presentation/controllers/notifications/notifications_binding.dart';
import 'package:make_it_app/presentation/pages/login/login_page.dart';
import 'package:make_it_app/presentation/pages/notifications/notifications_page.dart';
import 'package:make_it_app/routes/routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATIONS,
      page: () => const NotificationsPage(),
      binding: NotificationsBinding(),
    )
  ];
}
