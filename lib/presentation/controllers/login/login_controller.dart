import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:make_it_app/routes/routes.dart';

class LoginController extends GetxController {
  final pinController = TextEditingController();
  final RxString timeNow = ''.obs;
  final RxBool isTimeWrong = false.obs;
  final RxBool isPinFilled = false.obs;

  @override
  void onInit() async {
    super.onInit();
    timeNow.value = _formattedTime();
  }

  @override
  void onReady() async {
    super.onReady();
    _loadPeriodicDateTime();
  }

  _loadPeriodicDateTime() {
    Timer.periodic(
        const Duration(seconds: 1), (_) => timeNow.value = _formattedTime());
  }

  String _formattedTime() {
    String currentTime = DateFormat('hh:mm').format(DateTime.now());
    return currentTime;
  }

  onPinChanged(String value) {
    if (value.length == 4) {
      isPinFilled.value = true;
    } else {
      isPinFilled.value = false;
    }
  }

  onConfirm() {
    String formattedTime = DateFormat('hhmm').format(DateTime.now());
    if (formattedTime == pinController.text) {
      Get.offAllNamed(Routes.NOTIFICATIONS);
    } else {
      isTimeWrong.value = true;
    }
  }

  removeErrorMessage() => isTimeWrong.value = false;
}
