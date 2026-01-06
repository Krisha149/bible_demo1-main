

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/home_model.dart';
import '../resource/colors.dart';
import '../route/routes.dart';
import 'continue.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.asset(
                    HomeEventText[index]['img']!,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: btnBg,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(HomeEventText[index]['label']!),
                      ),

                      const SizedBox(height: 8),
                      Text(HomeEventText[index]['title']!),
                      Text(HomeEventText[index]['time']!),
                      Text(HomeEventText[index]['location']!),
                      Text(HomeEventText[index]['sportsFilled']!),

                      const SizedBox(height: 10),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: LinearProgressBar(
                          maxSteps: 10,
                          currentStep: 5,
                          progressType: ProgressType.linear,
                          progressColor: btnBg,
                          backgroundColor: Colors.grey.shade300,
                        ),
                      ),

                      const SizedBox(height: 10),
                      Text(HomeEventText[index]['description']!),

                      const SizedBox(height: 10),
                      ButtonWidget(
                        text: 'Join Event',
                        onTap: () => Get.offAllNamed(Routes.JoinEvent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        childCount: HomeEventText.length,
      ),
    );
  }
}
