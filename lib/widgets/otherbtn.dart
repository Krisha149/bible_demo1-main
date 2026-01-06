import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resource/colors.dart';
import '../resource/size.dart';

class ButtonOther extends GetView {
  final String icon;
  final String text;
  final VoidCallback? onTap;

  const ButtonOther({
    super.key,
    required this.text,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      width: btnSize,
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(btnFontColor),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(icon,height: imageH,width: imageW,),
            Text(
              text,
              style: TextStyle(
                fontSize: btnFont,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
