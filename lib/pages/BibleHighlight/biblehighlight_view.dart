import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../widgets/highlightcard.dart';
import 'biblehighlight_controller.dart';

class BibleHighlightView extends GetView<BibleHighlightController> {
  const BibleHighlightView({super.key});

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
                      Text("Highlights"),
                    ])),
              ),
        ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("5 Highlights"),
              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
              HighLightCard(),
            ],
          ),
        ),
      )

      ]),
    );
  }
}
