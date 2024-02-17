import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class LoginController extends GetxController {
  final pinController = TextEditingController();
  final DateTime dateTimeNow = DateTime.now();
  final RxString timeNow = ''.obs;

  @override
  void onInit() async {
    super.onInit();
    timeNow.value = _formattedTime();
  }

  @override
  void onReady() async {
    super.onReady();
    await _loadPeriodicDateTime();
  }

  _loadPeriodicDateTime() {
    Timer.periodic(const Duration(seconds: 1),
            (_) => timeNow.value = _formattedTime());
  }

  String _formattedTime() {
    String currentTime = DateFormat('hh:mm').format(dateTimeNow);
    return currentTime;
  }

  onConfirm() {
    String formattedTime = DateFormat('hhmm').format(dateTimeNow);
    if (formattedTime == pinController.text) {
      print("Nicole!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    }
  }
}
