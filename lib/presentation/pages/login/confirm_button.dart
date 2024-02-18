import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_it_app/presentation/controllers/login/login_controller.dart';

class ConfirmButton extends GetView<LoginController> {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 20),
        child: controller.isPinFilled.isTrue
            ? FilledButton(
                onPressed: controller.onConfirm,
                child: const Text('Confirm'),
              )
            : FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.black26,
                ),
                child: const Text('Confirm')),
      ),
    );
  }
}
