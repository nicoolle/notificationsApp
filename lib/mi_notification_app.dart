import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:make_it_app/routes/app_pages.dart';
import 'package:make_it_app/routes/routes.dart';
import 'package:make_it_app/style/app_theme.dart';

class MiNotificationApp extends StatelessWidget {
  const MiNotificationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MiNotification',
      initialRoute: Routes.LOGIN ,
      getPages: AppPages.pages,
      themeMode: ThemeMode.light,
      theme: MITheme.lightTheme(),
      builder: EasyLoading.init(),
    );
  }
}
