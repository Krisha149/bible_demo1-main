import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../widgets/genesisGridcard.dart';
import '../Philippians/Philippians_view.dart';
import '../Romans/romans_view.dart';
import 'genesis_controller.dart';

class GenesisView extends GetView<GenesisController> {
  const GenesisView({super.key});

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
                      Text("Genesis"),
                    ])),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Select Chapter"),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                GenesisGridCard(
                  onTap: (index) {
                    if (index == 2) {
                      Get.to(() => RomansView());
                    }
                    else if (index == 3) {
                      Get.to(() => PhilippiansView());}
                    // else if (index == 3) {
                    //   Get.to(() => ChapterThreeView());
                    // } else {
                    //   Get.to(() => DefaultChapterView(chapter: index));
                    // }
                  },),
                    // GenesisGridCard(),
                  ],
                ),
              ),
            )

          ]),
    );
  }
}
