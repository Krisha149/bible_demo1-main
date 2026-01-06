import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../widgets/Philippianspage.dart';
import 'Philippians_controller.dart';

class PhilippiansView extends GetView<PhilippiansController> {
  const PhilippiansView({super.key});

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
                      Text("Philippians 4"),
                    ])),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PhilippiansPage()
                  ],
                ),
              ),
            )

          ]),
    );
  }
}
