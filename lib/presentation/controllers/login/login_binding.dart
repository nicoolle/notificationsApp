import 'package:get/get.dart';
import 'package:make_it_app/presentation/controllers/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
