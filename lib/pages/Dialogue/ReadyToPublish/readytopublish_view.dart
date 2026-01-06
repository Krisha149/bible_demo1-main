import 'package:bible_demo/pages/Dialogue/ReadyToPublish/readytopublish_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../route/routes.dart';
import '../../../widgets/continue.dart';


class ReadytopublishView extends GetView<ReadytopublishController> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.check, size: 50, color: Colors.orange),
            const SizedBox(height: 12),
            const Text(
              "Ready to Publish?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Your event will be visible to everyone in your area. You can edit or delete it anytime.",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),
            ButtonWidget(text: 'Publish Event', onTap: () {Get.offAllNamed(Routes.eventPublish);}
            ),
            const SizedBox(height: 20),
            ButtonWidget(text: 'Review Again', onTap: () {Get.back();} ,),
          ],
        ),
      ),
    );
  }
}
