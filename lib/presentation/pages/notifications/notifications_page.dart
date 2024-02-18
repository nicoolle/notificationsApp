import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_it_app/presentation/controllers/notifications/notifications_controller.dart';
import 'package:make_it_app/utils/app_bar.dart';

class NotificationsPage extends GetView<NotificationsController> {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MiAppBar(
        title: 'Notifications',
      ),
      body: Obx(
        () => Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13.0, vertical: 20),
                child: FilledButton(
                  onPressed: () {},
                  child: const Text('Add new notification'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
