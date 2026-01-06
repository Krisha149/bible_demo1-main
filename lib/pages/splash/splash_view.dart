import 'package:bible_demo/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constant.dart';
import '../../model/splash_model.dart';
import '../../resource/colors.dart';
import '../../resource/font_family.dart';
import '../../resource/size.dart';
import '../../route/routes.dart';
import '../../widgets/continue.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: backgroundGradient),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            bottom: 25,
            left: 15,
            right: 15,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   SmoothPageIndicator(
                      controller: controller.pageController,
                      count: splashText.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        expansionFactor: 4,
                        activeDotColor: indiColor,
                        dotColor: Colors.white54,
                      ),
                    ),


                  GestureDetector(
                    onTap: () => Get.offAllNamed(Routes.onBoarding),
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
                  controller: controller.pageController,
                  itemCount: splashText.length,
                  onPageChanged: (index) {
                    controller.currentIndex.value = index;
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(splashText[index]['img']!,height: 300,),
                        const SizedBox(height: 50),
                        SizedBox(
                          height:50,
                          child: Text(
                            splashText[index]['title']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 33,
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
                            splashText[index]['description']!,
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
