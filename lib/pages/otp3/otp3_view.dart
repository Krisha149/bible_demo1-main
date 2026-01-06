import 'package:bible_demo/pages/otp3/otp3.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/font_family.dart';
import '../../widgets/continue.dart';

class Otp3View extends GetView<Otp3controller> {
  Otp3controller Otp31controller = Otp3controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:50.0,left: 15,right: 15,bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/Icon_img/right.png",height: 400,width: 400,),
                Text("Success!" ,style: TextStyle(fontSize: 13.14,fontWeight: FontWeight.w500,fontFamily: fontF)),
                SizedBox(height: 20,),
                Text("Congratulations! You have been successfully authenticated",                   textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13.14,fontWeight: FontWeight.w500,fontFamily: fontF)),
              ],
            ),
            ButtonWidget(text: 'Continue', onTap: Otp31controller.redirectToNextScreen,

            )
          ],
        ),
      ),

    );
  }
}
