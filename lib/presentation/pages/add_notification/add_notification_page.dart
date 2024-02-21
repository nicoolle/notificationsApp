import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_it_app/presentation/controllers/add_notification/add_notification_controller.dart';
import 'package:make_it_app/style/app_sizes.dart';
import 'package:make_it_app/utils/app_bar.dart';

class AddNotificationPage extends GetView<AddNotificationController> {
  const AddNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MiAppBar(
        title: 'Add new notification',
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 6,
          ),
          FilledButton(onPressed: controller.addNewNotification(), child: Text('Confirm'))
        ],
      ),
    );
  }
}
