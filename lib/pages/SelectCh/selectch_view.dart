import 'package:bible_demo/pages/SelectCh/selectch_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../route/routes.dart';
import '../../widgets/chaptercard.dart';

class SelectChView extends GetView<SelectChController> {
  const SelectChView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SafeArea(child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios_new),
                      SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                      Text("Select Chapter"),
                    ])),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Choose a Book"),
                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    GestureDetector(
                          onTap:()=>Get.offAllNamed(Routes.genesis),
                        child: ChapterCard()),
                  ],
                ),
              ),
            )

          ]),
    );
  }
}
