import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_it_app/presentation/controllers/login/login_controller.dart';
import 'package:make_it_app/presentation/pages/login/confirm_button.dart';
import 'package:make_it_app/presentation/pages/login/error_message.dart';
import 'package:make_it_app/style/app_sizes.dart';
import 'package:make_it_app/utils/app_bar.dart';
import 'package:pinput/pinput.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({super.key});

  final defaultPinTheme = PinTheme(
    width: 45,
    height: 45,
    textStyle: const TextStyle(fontWeight: FontWeight.bold),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.black12),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MiAppBar(
        title: 'Log In',
      ),
      body: Obx(
        () => Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              gapH64,
              Text(
                'Log In',
                style: textTheme.headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              gapH16,
              Text(
                'Enter current time in hh : mm format',
                style: textTheme.bodyLarge?.copyWith(color: Colors.black45),
              ),
              gapH32,
              Text(
                controller.timeNow.value,
                style: textTheme.headlineMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              gapH32,
              Pinput(
                onTap: controller.removeErrorMessage,
                onChanged: (v) => controller.onPinChanged(v),
                controller: controller.pinController,
                separatorBuilder: (index) => index == 1
                    ? Text(
                        ' : ',
                        style: textTheme.headlineLarge?.copyWith(
                            color: Colors.black12, fontWeight: FontWeight.bold),
                      )
                    : gapW12,
                cursor: Text(
                  '|',
                  style: textTheme.headlineMedium,
                ),
                focusedPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(color: Colors.deepPurple)),
                defaultPinTheme: defaultPinTheme,
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        controller.isTimeWrong.value
                            ? const LoginErrorMessage()
                            : Container(),
                        const ConfirmButton()
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
