import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resource/colors.dart';
import '../resource/font_family.dart';
import '../resource/size.dart';

class VerySmallBtn extends GetView {
  final String text;
  final VoidCallback? onTap;

  const VerySmallBtn({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
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
        child: Text(
          text,
          style: TextStyle(
            fontSize: btnFont,
            color:btnFontColor,
            fontFamily: fontF,
          ),
        ),
      ),
    );
  }
}
