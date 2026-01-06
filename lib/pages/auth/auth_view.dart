
import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../resource/pading.dart';
import '../../resource/size.dart';
import '../../widgets/bottomsheet.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: backgroundGradient),
        child: Column(
          children: [
            Padding(
              padding: appPading.screenPadding,
              child: Image.asset(
                "assets/splash_img/sp4.png",
                height: authImageSize,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            Expanded(
              child: BottomSheetApp(), // fixed rounded container
            ),
          ],
        ),
      ),
    );
  }
}
