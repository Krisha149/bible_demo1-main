import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../route/routes.dart';
import '../../widgets/Homeupperbar.dart';
import '../../widgets/biblecard.dart';
import '../../widgets/bibleupperbar.dart';
import 'bible_controller.dart';

class BibleView extends GetView<BibleController> {
  const BibleView({super.key});

  Widget Box(textColor,bgColor,text,context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13),
      height: 90,
      width: MediaQuery.of(context).size.width*0.39,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: Color(0xFFF9A13D)),
        color: bgColor,
      ),
      child: Center(child: Text(text,style:TextStyle(color: textColor))),
    );
  }

  Widget infoContainer({
    required String title,
    required String desc,
    Color bg = Colors.white,
    context,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      padding: const EdgeInsetsDirectional.all(14),
      decoration: BoxDecoration(
        color: bg,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text(desc),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    const String Text1 ="Continue Reading";
    const String Text2 ="Catalogue";

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: SafeArea(child: BibleUpperBar()),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width*0.3,

                            child: Image.asset("assets/Bible/Container.png")),
                      SizedBox(width: MediaQuery.of(context).size.width*0.08,),
                      Column(
                        children: [
                          Text("Bible Scripture"),
                          Text("Holy Bible - NIV")
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       GestureDetector(
                           onTap:()=>Get.offAllNamed(Routes.selectCh),
                           child: Box(Color(0xFFFFFFFF),Color(0xFFF9A13D),Text1,context)),
                      GestureDetector(
                          onTap:()=>Get.offAllNamed(Routes.Bibleversion),
                          child: Box(Color(0xFFF9A13D),Color(0xFFFFFFFF),Text2,context)),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.028,),
                  GestureDetector(onTap:()=>Get.offAllNamed(Routes.Notes),
                      child: BibleCard()),
                  SizedBox(height: MediaQuery.of(context).size.height*0.020,),
                  infoContainer(
                      title: 'Description',
                      desc: 'The Bible is a collection of sacred texts that form the foundation of Christian faith. This New International Version (NIV) provides modern, accessible language while maintaining accuracy to the original texts. Read, study, and grow in your faith through daily Scripture engagement.',
                     context: context
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

