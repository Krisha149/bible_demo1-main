import 'package:bible_demo/resource/pading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant.dart';
import '../../model/holybot_model.dart';
import '../../resource/colors.dart';
import '../../resource/font_family.dart';
import '../../resource/size.dart';
import '../../route/routes.dart';
import '../../widgets/continue.dart';
import 'holybot_controller.dart';

class Holybot extends GetView<HolyBotController> {
  const Holybot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: backgroundGradient),
        child: Padding(
          padding: appPading.holyPadding,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Get.offAllNamed(Routes.auth),
                    child: Row(
                      children: [
                        Text('Skip', style: TextStyle(color: blackColor,fontFamily: fontF,fontSize: btnFont)),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                          color: blackColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Expanded(
                child: PageView.builder(
                  itemCount: holyText.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(holyText[index]['img']!,height: 300,),
                        const SizedBox(height: 50),
                        SizedBox(
                          height:50,
                          child: Text(
                            holyText[index]['title']!,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                                fontFamily: fontF

                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          height:50,
                          child: Text(
                            holyText[index]['description']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: blackColor,fontFamily: fontF),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              ButtonWidget(
                text: 'Continue',
                onTap: controller.redirectToNextScreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
