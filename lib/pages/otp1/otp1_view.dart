
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/font_family.dart';
import '../../widgets/continue.dart';
import 'otp1.controller.dart';

class Otp1View extends GetView<Otp1controller> {

  final Otp1controller otpController = Get.put(Otp1controller());

  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 25),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "OTP Verification",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,

                    child: Text(
                      "Enter email and phone number to send one time Password",
                      style: TextStyle(
                        fontSize: 13.14,
                        fontWeight: FontWeight.w500,
                        fontFamily: fontF,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: fontF,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'historylearner@gmail.com',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey, width: 3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is required";
                      }
                      if (!value.endsWith("@gmail.com")) {
                        return "Only gmail.com allowed";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 20),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Phone Number",
                      style: TextStyle(
                        fontFamily: fontF,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  TextFormField(
                    maxLength: 10,

                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      counterText: "",
                      hintText: '9876543210',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey, width: 3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Phone number is required";
                      }
                      if (value.length != 10) {
                        return "Enter valid 10 digit number";
                      }
                      return null;
                    },
                  ),
                ],
              ),

              ButtonWidget(
                text: 'Continue',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    otpController.redirectToNextScreen();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
