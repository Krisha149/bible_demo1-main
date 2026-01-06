import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../resource/font_family.dart';
import '../../widgets/continue.dart';
import 'otp2.controller.dart';

class Otp2View extends GetView<Otp2controller> {
  const Otp2View({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 50, left: 15, right: 15, bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Verification Code",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700)),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "We have sent the verification code to your email address.",
                      style: TextStyle(fontSize: 13.14,fontWeight: FontWeight.w500,fontFamily: fontF)
                  ),
                ),
                SizedBox(height: 30),

                otpBoxes(controller),
              ],
            ),

            ButtonWidget(
              text: 'Continue',
              onTap: controller.redirectToNextScreen,
            ),
          ],
        ),
      ),
    );
  }
}

Widget otpBoxes(Otp2controller controller) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: List.generate(4, (index) {
      return SizedBox(
        width: 60,
        height: 60,
        child: TextField(
          focusNode: controller.focusNodes[index],
          controller: controller.textControllers[index],
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          maxLength: 1,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            counterText: '',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (value) {
            if (value.isNotEmpty && index < 3) {
              controller.focusNodes[index + 1].requestFocus();

              // FocusScope.of(Get.context!).nextFocus();
            }
            if (value.isEmpty && index > 0) {
              controller.focusNodes[index - 1].requestFocus();

              // FocusScope.of(Get.context!).previousFocus();
            }
          },
        ),
      );
    }),
  );
}

