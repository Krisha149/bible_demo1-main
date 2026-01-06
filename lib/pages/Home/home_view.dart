
import 'package:bible_demo/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../route/routes.dart';
import '../../widgets/Event.dart';
import '../../widgets/Homeupperbar.dart';
import '../../widgets/Myeventbtn.dart';
import 'home_controller.dart';

class homeView extends GetView<HomeController> {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            // backgroundColor: Colors.white,
            // elevation: 1,
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: SafeArea(child: homeUpper()),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),

                  const SizedBox(height: 10),
                  Myeventbtn(text: 'My Events', onTap: () {}),

                  const SizedBox(height: 15),
                  const Text(
                    "Nearby Events",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),

                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),

          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            sliver: Event(),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),

        child: FloatingActionButton(
            heroTag: null,
            backgroundColor: btnBg,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0), // Adjust the radius for desired corner roundness
            ),
            child: const Icon(Icons.add,color: Colors.white,),
          onPressed:(){ Get.offAllNamed(Routes.creEvent);}),
      ),
    );
  }
}

