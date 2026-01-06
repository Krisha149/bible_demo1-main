import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resource/colors.dart';
import '../resource/font_family.dart';
import '../resource/size.dart';

class Myeventbtn extends GetView {
  final String text;
  final VoidCallback? onTap;

  const Myeventbtn({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: btnSize,
      child: Center(
        child: TextButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(btnBg),
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(15),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calendar_month_outlined,color:btnFontColor,),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Text(
                text,
                style: TextStyle(
                  fontSize: btnFont,
                  color:btnFontColor,
                  fontFamily: fontF,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
