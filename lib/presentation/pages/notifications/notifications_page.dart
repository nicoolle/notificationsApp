import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_it_app/presentation/controllers/notifications/notifications_controller.dart';
import 'package:make_it_app/presentation/pages/notifications/notification_card.dart';
import 'package:make_it_app/routes/routes.dart';
import 'package:make_it_app/style/app_sizes.dart';
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
      body: DefaultTabController(
        length: 2,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.black),
                child: Container(
                  margin: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(8)),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.blue,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: const EdgeInsets.all(3),
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelStyle:
                        const TextStyle(fontWeight: FontWeight.normal),
                    tabs: const [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.timer_outlined),
                            gapW2,
                            Text('On Time'),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.history),
                            gapW2,
                            Text('Recurring'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                    children: [
                      // "On Time" Tab Content
                      Center(
                        child: NotificationCard(),
                      ),
                      // "Recurring" Tab Content
                      Center(
                        child: Text('Recurring Tab Content'),
                      ),
                    ],

                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13.0, vertical: 20),
                child: FilledButton(
                  onPressed: () {
                    Get.toNamed(Routes.ADD_NOTIFICATION);
                  },
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
